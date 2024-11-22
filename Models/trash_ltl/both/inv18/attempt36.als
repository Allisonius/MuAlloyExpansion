var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv18{
always all f: Protected | f in Protected until f in Trash
}