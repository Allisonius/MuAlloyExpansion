var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv13{
always all f: File | f not in Trash until f in Trash
}