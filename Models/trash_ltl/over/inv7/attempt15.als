var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv7{
always (some f: (File - Protected) | eventually f in Protected)
}