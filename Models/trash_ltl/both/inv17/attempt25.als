var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv17{
all f: File |always  (once f in Trash releases f' not in File)
}