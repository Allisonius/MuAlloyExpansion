var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv9{
all f:Protected | always f not in Trash
}