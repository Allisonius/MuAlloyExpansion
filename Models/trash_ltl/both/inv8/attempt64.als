var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv8{
always(eventually  (File.link in Trash and link.File in Trash))
}