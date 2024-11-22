var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv8{
always all l : File.link | eventually l in File.link implies always l in Trash
}