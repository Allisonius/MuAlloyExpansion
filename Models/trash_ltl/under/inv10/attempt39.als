var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv10{
always all p: Protected | always (after p in Protected)
}