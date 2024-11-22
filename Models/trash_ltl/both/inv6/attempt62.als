var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv6{
no Trash or all f : File | (f in Trash) since (f in Trash)
}