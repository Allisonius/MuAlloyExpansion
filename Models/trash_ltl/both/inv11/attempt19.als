var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv11{
all f : File + Trash | after f in Protected
}