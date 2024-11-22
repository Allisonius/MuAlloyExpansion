var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv8{
always eventually all f:File | f in link.f implies link.f in Trash
}