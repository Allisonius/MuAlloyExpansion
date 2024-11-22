var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv8{
always all l: File.link | eventually l in Trash since l in File.link
}