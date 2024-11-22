var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv5{
no File & Trash and eventually some File & Trash
}