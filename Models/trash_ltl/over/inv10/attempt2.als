var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv10{
always all f: Protected | always f not in Trash and always f not in File
}