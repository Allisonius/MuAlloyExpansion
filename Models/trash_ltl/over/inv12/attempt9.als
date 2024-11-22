var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
eventually some Trash and always (all t: Trash | always t in Trash)
}