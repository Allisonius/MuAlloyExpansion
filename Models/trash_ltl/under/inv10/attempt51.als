var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv10{
after all f : File | once f in Protected implies f in Protected
}