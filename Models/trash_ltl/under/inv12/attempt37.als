var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
eventually (always some f:File | f not in (Trash & Protected) implies f in Trash')
}