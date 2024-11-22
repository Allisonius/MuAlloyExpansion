var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
all f:File | once f in Trash implies always some (f &Trash)
}