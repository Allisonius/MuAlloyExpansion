var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv14{
all f:File | (f in Trash and f in Protected) implies (f in Trash' and f not in Protected')
}