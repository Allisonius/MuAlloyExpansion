var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv8{
some link implies eventually link.File-Protected in Trash
}