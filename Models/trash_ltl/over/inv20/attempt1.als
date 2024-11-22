var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv20{
always all p : File | p in Trash since p not in Protected
}