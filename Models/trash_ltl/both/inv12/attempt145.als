var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
always all t:Trash | (once t not in Trash and t in Trash) releases t not in Trash
}