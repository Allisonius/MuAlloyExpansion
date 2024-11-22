var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv6{
always all f:File |  f in Trash implies Trash'=Trash
}