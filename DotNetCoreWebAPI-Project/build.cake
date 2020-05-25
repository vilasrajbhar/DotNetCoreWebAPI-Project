#tool "nuget:?package=xunit.runner.console"
#addin "Cake.Powershell"

var configuration = Argument("Configuration", "Debug");
var solution = "./web-api.sln";
var testdllpath = "./web-api-tests/bin/Debug/netcoreapp3.1/web-api-tests.dll";
var target = Argument("target", "TestProject");

Task("CleanBuild")
	.Does(() => {
		CleanDirectories("**/bin/" + configuration);
		CleanDirectories("**/obj/" + configuration);
		CleanDirectories("web-api-tests/TestResults");
	});

Task("Restore")
	.IsDependentOn("CleanBuild")
	.Does(() => {
		DotNetCoreRestore();
	});

Task("BuildProject")
	.IsDependentOn("Restore")
	.Does(() => {
		DotNetCoreBuild(solution, new DotNetCoreBuildSettings {
				Configuration = configuration
			});
	});

Task("TestProject")
	.IsDependentOn("BuildProject")
	.Does(() => {
		var testlocation = File("./web-api-tests/web-api-tests.csproj");
		DotNetCoreTest(testlocation, new DotNetCoreTestSettings {
			Configuration = configuration,
			NoBuild = true,
			ArgumentCustomization = args => args
				.Append("--collect").AppendQuoted("Code Coverage")
				.Append("--logger").Append("trx")
		});
	});

Task("default")
	.IsDependentOn("Test");

Task("Build")
	.Does(() => {
		MSBuild(solution);
	});


Task("Test")
    .IsDependentOn("Build")
    .Description("Run an example powershell command with parameters")
    .Does(() =>
{
    StartPowershellScript("xunit", args =>
        {
            args.AppendQuoted(testdllpath);
        });
});


RunTarget(target);