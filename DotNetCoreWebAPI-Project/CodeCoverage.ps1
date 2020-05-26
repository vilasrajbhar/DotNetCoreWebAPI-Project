cd .\DotNetCoreWebAPI-Project

dotnet build .\web-api.sln

dotnet test .\web-api.sln

$recentCoverageFile = Get-ChildItem -File -Filter *.coverage -Path .\web-api-tests\TestResults -Name -Recurse | Select-Object -First 1;

write-host 'Test Completed'  -ForegroundColor Green


C:\Users\vilas\.nuget\packages\microsoft.codecoverage\16.6.1\build\netstandard1.0\CodeCoverage\CodeCoverage.exe analyze  /output:.\web-api-tests\TestResults\MyTestOutput.coveragexml  .\web-api-tests\TestResults'\'$recentCoverageFile

write-host 'CoverageXML Generated'  -ForegroundColor Green


dotnet C:\tools\.store\dotnet-reportgenerator-globaltool\4.5.8\dotnet-reportgenerator-globaltool\4.5.8\tools\netcoreapp3.0\any\ReportGenerator.dll "-reports:.\web-api-tests\TestResults\MyTestOutput.coveragexml" "-targetdir:.\web-api-tests\TestResults\coveragereport"

write-host 'CoverageReport Published'  -ForegroundColor Green


dotnet C:\sonar-scanner-msbuild-core2.0\SonarScanner.MSBuild.dll begin /k:"DotNetCoreWebAPI-Project" `
/d:sonar.host.url="http://localhost:9000" `
/d:sonar.cs.opencover.reportsPaths="./web-api-tests/TestResults/opencover.xml" `
/d:sonar.cs.vscoveragexml.reportsPaths="./web-api-tests/TestResults/MyTestOutput.coveragexml" `
/d:sonar.coverage.exclusions="**/*Test.cs" 


dotnet C:\sonar-scanner-msbuild-core2.0\SonarScanner.MSBuild.dll end 