var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv10{
always all f:File | (f in Protected implies always f in Protected) and (f not in Protected implies always f not in Protected)
}