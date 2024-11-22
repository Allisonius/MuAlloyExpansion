var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv6{
always some f:File | (always f in Trash) releases (f in Trash and after f in Trash)
}