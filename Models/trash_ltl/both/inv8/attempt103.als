var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv8{
eventually (some x,y : File | x->y in link implies x in Trash and y in Trash)
}