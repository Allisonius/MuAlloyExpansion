var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
all f : File-Trash | eventually f in Trash => eventually after  f not in Trash
}