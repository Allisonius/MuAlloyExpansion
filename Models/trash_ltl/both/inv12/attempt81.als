var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
eventually all t : Trash | after t in Trash or t not in Trash
}