var sig File {
	var link : lone File
}
var sig Trash in File {}

var sig Protected in File {}


pred inv18{
always ( all f : File |
(once f in Protected) and f not in Protected implies (
once f in Trash
)
)
}