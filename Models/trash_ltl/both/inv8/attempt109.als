var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv8{
all f : File | some z : f.link | eventually (f in Trash and z in Trash)
}