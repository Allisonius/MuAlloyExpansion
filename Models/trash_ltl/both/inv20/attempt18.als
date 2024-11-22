var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv20{
always all t: File | t not in Protected since t in Protected
}