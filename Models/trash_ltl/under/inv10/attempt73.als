var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv10{
always all f: File | always (eventually f in Protected implies f in Protected)
}