var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv14{
all f:File | ((f in Protected) and (f in Trash)) implies f not in Protected'
}