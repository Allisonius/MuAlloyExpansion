var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv15{
all f:File | eventually (f not in Trash implies after f in Trash)
}