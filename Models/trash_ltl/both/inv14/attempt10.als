var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv14{
File in Protected&Trash  implies after File not in Protected
}