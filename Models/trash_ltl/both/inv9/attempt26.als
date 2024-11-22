var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv9{
all f: File | eventually f in Protected implies always f not in Trash
}