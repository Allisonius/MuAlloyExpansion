var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
always all t:Trash | t in Trash releases t not in Trash
}