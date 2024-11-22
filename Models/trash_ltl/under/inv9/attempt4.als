var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv9{
all f: File | always f in Protected implies eventually f not in Trash
}