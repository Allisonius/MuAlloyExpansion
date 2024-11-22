var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv13{
some f : File | always f in Trash implies once f not in Trash
}