var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv13{
always some f:File | f in Trash implies always once f in File-Trash
}