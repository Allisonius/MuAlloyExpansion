var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv10{
always all f : File {
(f in Protected implies f in Protected)
(f not in Protected implies f not in Protected)
}
}