var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv14{
all f:File&Protected&Trash | after f in File&Trash
}