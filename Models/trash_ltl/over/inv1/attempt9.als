var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv1{
always( before all f:File | f in Protected )
}