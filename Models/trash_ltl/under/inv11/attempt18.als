var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv11{
always all f:File | always f not in Protected implies f in Protected'
}