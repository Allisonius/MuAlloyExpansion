var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv17{
all f: File | always (File' = File - f since f in Trash)
}