var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv17{
all t: Trash | after t not in File
}