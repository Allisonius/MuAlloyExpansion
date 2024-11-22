var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv18{
always (all f : Protected | f not in Protected implies before f in Trash)
}