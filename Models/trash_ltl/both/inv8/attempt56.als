var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv8{
eventually (all f : File | some f.link implies f in Trash)
}