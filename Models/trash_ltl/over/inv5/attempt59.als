var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv5{
some f: File | eventually always f in Trash and eventually f not in File
}