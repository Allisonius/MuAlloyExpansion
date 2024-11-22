var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
always (all f:File |  always f in Trash since  some (f& Trash) )
}