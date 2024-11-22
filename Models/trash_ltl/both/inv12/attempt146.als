var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
eventually some f : File | after eventually f in Trash => after f not in Trash
}