var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv4{
some f: File | once f not in Protected and eventually always f in Trash
}