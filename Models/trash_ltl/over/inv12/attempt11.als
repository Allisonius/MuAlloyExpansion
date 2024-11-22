var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
always( some f: File | f not in Trash and eventually always f in Trash)
}