var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv19{
eventually (all f : Protected | eventually f in Trash implies historically f in Protected)
}