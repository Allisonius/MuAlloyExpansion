var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv8{
always (all f:File.^link| some f implies  eventually  f  in Trash)
}