var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv6{
always all f:File | (f in Trash) releases (f not in Trash) and after always (f in Trash)
}