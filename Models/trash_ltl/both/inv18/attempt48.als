var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv18{
always all t: Trash | once t in Protected and t not in Protected
}