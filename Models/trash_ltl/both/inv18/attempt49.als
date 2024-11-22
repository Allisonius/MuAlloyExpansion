var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv18{
all f : Protected | always (f in Trash triggered  f not in Protected)
}