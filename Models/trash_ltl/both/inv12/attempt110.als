var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
always all f:File | f in File implies always eventually f in Trash
}