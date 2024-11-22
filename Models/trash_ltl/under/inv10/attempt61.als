var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv10{
all p: Protected | once p in Protected implies always p in Protected
}