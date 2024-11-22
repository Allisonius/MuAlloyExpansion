var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
always all f: File | eventually some Trash and f in Trash implies always f in Trash
}