var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv12{
eventually some f : File | f in Trash => after (eventually f not in Trash or f in Trash)
}