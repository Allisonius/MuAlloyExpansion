var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv15{
some File implies (eventually File in Trash)
}