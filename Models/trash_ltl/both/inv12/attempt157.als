var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
all f: File | eventually some Trash and once f in Trash implies always f in Trash
}