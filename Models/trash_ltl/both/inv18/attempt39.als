var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv18{
always (all f : File | (before f in Protected) implies f in Trash)
}