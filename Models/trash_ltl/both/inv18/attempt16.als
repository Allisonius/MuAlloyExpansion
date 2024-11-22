var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv18{
all f : File | always (f in Trash => f not in Protected)
}