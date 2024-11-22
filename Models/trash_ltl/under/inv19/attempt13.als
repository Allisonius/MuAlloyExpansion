var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv19{
all f : Protected | (f in Trash and f not in Protected) until f in Protected
}