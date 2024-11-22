var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv14{
always all f:Trash | f in Protected and f not in Protected'
}