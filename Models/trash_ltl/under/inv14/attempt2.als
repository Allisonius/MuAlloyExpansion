var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv14{
all t: Trash & Protected | after t not in Protected
}