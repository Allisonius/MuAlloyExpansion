var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv9{
all f: Protected | historically f not in Trash and always f not in Trash
}