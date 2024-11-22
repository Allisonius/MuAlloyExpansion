var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv13{
eventually all f:File | f in Trash implies once f not in Trash
}