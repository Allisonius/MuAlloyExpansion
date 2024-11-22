var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv17{
always all f : File | f not in File since f in Trash
}