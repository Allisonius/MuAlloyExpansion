var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
eventually (all f: Trash | always f in Trash)
}