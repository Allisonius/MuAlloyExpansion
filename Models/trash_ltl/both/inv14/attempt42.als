var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv14{
always some f : Protected & Trash | (f in Protected & Trash) implies (f not in Protected')
}