var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv9{
all f: File | eventually after f in Protected implies always f not in Trash
}