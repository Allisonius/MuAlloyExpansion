var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv18{
all f : Protected-Trash | always (f in Trash' => always (f not in Protected))
}