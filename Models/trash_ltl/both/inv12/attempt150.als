var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
all f : File | (always eventually f in Trash) implies (always eventually f not in Trash)
}