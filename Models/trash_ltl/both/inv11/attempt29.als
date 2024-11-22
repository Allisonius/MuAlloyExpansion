var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv11{
some (File - Protected) implies (after (File - Protected) in Protected)
}