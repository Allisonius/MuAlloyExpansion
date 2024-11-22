var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv5{
always (some f:Trash-Protected | eventually no Trash & f)
}