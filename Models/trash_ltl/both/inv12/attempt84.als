var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
some f:File | f not in Trash implies eventually always f in Trash
}