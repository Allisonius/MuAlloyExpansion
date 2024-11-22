var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv13{
always some f : File | always f in Trash implies once f not in Trash
}