var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv10{
eventually all f: Protected | once f in Protected implies always f in Protected
}