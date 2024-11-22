var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv18{
always all p: Protected |always p in Trash releases p not in Protected
}