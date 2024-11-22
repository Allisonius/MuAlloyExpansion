var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv14{
all pt : Protected & Trash | after pt not in Protected
}