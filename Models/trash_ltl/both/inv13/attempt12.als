var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv13{
some f : File | eventually f in Trash => once f not in Trash
}