var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv20{
always (all f:File | no (f&Protected) since  f in Trash)
}