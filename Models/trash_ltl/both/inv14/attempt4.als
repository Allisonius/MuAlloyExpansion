var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv14{
Protected in Trash implies Protected' not in Trash
}