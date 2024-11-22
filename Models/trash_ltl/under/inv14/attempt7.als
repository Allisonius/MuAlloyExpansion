var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv14{
all p:Protected | p in Trash implies after p not in Protected
}