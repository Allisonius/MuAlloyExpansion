var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv9{
all f: File | always after f not in Trash implies once f in Protected
}