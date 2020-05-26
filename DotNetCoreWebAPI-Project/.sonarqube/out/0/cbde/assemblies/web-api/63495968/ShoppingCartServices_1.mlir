func @_web_api.Services.ShoppingCartServices.Add$web_api.Model.ShoppingItem$(none) -> none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :25 :8) {
^entry (%_newItem : none):
%0 = cbde.alloca none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :25 :32)
cbde.store %_newItem, %0 : memref<none> loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :25 :32)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :27 :12) // Not a variable of known type: newItem
%2 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :27 :12) // newItem.Id (SimpleMemberAccessExpression)
// Entity from another assembly: Guid
%3 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :27 :25) // Guid.NewGuid() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :28 :12) // Not a variable of known type: _shoppingCart
%5 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :28 :30) // Not a variable of known type: newItem
%6 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :28 :12) // _shoppingCart.Add(newItem) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :30 :16) // Not a variable of known type: _shoppingCart
%8 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :30 :33) // null (NullLiteralExpression)
%9 = cbde.unknown : i1  loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :30 :16) // comparison of unknown type: _shoppingCart != null
cond_br %9, ^1, ^2 loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :30 :16)

^1: // JumpBlock
%10 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :32 :23) // Not a variable of known type: newItem
return %10 : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :32 :16)

^2: // JumpBlock
%11 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :36 :22) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %11 :  none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :36 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_web_api.Services.ShoppingCartServices.GetAllItems$$() -> none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :40 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :42 :16) // Not a variable of known type: _shoppingCart
%1 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :42 :33) // null (NullLiteralExpression)
%2 = cbde.unknown : i1  loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :42 :16) // comparison of unknown type: _shoppingCart != null
cond_br %2, ^1, ^2 loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :42 :16)

^1: // JumpBlock
%3 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :44 :23) // Not a variable of known type: _shoppingCart
return %3 : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :44 :16)

^2: // JumpBlock
%4 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :48 :22) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %4 :  none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Services\\ShoppingCartServices.cs" :48 :16)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function GetById(none), it contains poisonous unsupported syntaxes

// Skipping function Remove(none), it contains poisonous unsupported syntaxes

