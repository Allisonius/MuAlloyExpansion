var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv18{
all p:Protected | p in File - Protected implies p in Trash
}