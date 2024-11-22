var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv5{
all f : File | f not in Trash and eventually f in Trash
}