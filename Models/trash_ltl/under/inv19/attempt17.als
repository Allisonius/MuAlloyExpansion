var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv19{
always all p : Protected | eventually p in Trash && (always p not in Trash => p in Protected)
}