func @_web_api.Controllers.ShoppingCartController.Get$$() -> none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :20 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :23 :24) // Not a variable of known type: _service
%1 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :23 :24) // _service.GetAllItems() (InvocationExpression)
// Entity from another assembly: Ok
%3 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :24 :22) // Not a variable of known type: items
%4 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :24 :19) // Ok(items) (InvocationExpression)
return %4 : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :24 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_web_api.Controllers.ShoppingCartController.Get$System.Guid$(none) -> none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :28 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :29 :46)
cbde.store %_id, %0 : memref<none> loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :29 :46)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :31 :23) // Not a variable of known type: _service
%2 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :31 :40) // Not a variable of known type: id
%3 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :31 :23) // _service.GetById(id) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :33 :16) // Not a variable of known type: item
%6 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :33 :24) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :33 :16) // comparison of unknown type: item == null
cond_br %7, ^1, ^2 loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :33 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%8 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :35 :23) // NotFound() (InvocationExpression)
return %8 : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :35 :16)

^2: // JumpBlock
// Entity from another assembly: Ok
%9 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :38 :22) // Not a variable of known type: item
%10 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :38 :19) // Ok(item) (InvocationExpression)
return %10 : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :38 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_web_api.Controllers.ShoppingCartController.Post$web_api.Model.ShoppingItem$(none) -> none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :42 :8) {
^entry (%_value : none):
%0 = cbde.alloca none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :43 :33)
cbde.store %_value, %0 : memref<none> loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :43 :33)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :45 :17) // Identifier from another assembly: ModelState
%2 = cbde.unknown : i1 loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :45 :17) // ModelState.IsValid (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :45 :16) // !ModelState.IsValid (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :45 :16)

^1: // JumpBlock
// Entity from another assembly: BadRequest
%4 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :47 :34) // Identifier from another assembly: ModelState
%5 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :47 :23) // BadRequest(ModelState) (InvocationExpression)
return %5 : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :47 :16)

^2: // JumpBlock
%6 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :50 :23) // Not a variable of known type: _service
%7 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :50 :36) // Not a variable of known type: value
%8 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :50 :23) // _service.Add(value) (InvocationExpression)
// Entity from another assembly: CreatedAtAction
%10 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :51 :35) // "Get" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :51 :53) // Not a variable of known type: item
%12 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :51 :53) // item.Id (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :51 :42) // new { id = item.Id } (AnonymousObjectCreationExpression)
%14 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :51 :64) // Not a variable of known type: item
%15 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :51 :19) // CreatedAtAction("Get", new { id = item.Id }, item) (InvocationExpression)
return %15 : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :51 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_web_api.Controllers.ShoppingCartController.Remove$System.Guid$(none) -> none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :55 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :56 :35)
cbde.store %_id, %0 : memref<none> loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :56 :35)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :58 :31) // Not a variable of known type: _service
%2 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :58 :48) // Not a variable of known type: id
%3 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :58 :31) // _service.GetById(id) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :60 :16) // Not a variable of known type: existingItem
%6 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :60 :32) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :60 :16) // comparison of unknown type: existingItem == null
cond_br %7, ^1, ^2 loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :60 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%8 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :62 :23) // NotFound() (InvocationExpression)
return %8 : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :62 :16)

^2: // JumpBlock
%9 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :65 :12) // Not a variable of known type: _service
%10 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :65 :28) // Not a variable of known type: id
%11 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :65 :12) // _service.Remove(id) (InvocationExpression)
// Entity from another assembly: Ok
%12 = cbde.unknown : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :66 :19) // Ok() (InvocationExpression)
return %12 : none loc("C:\\Projects\\DotNetCoreWebAPI-Project\\DotNetCoreWebAPI-Project\\web-api\\Controllers\\ShoppingCartController.cs" :66 :12)

^3: // ExitBlock
cbde.unreachable

}
