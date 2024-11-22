var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv2{
all f : File | after no File implies f in File
}