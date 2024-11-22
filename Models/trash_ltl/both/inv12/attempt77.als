var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
some f:File | f not in Trash implies f in Trash since f in Trash
}