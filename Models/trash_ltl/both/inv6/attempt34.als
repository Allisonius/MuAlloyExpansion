var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv6{
eventually some t:Trash | always t in Trash
}