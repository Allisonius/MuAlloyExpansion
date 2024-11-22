var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv7{
some f: File | f in File implies eventually f' in Protected
}