var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
eventually (always some f:File | (f not in Trash and f not in Protected ) implies f in Trash')
}