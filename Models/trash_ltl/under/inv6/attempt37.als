var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv6{
always all p : Trash | always p in Trash since p in Trash
}