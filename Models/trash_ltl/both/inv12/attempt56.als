var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
all f:File-Protected | eventually always f in Trash
}