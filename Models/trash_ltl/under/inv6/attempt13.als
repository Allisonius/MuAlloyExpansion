var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv6{
all t : Trash | t in Trash since t in Trash
}