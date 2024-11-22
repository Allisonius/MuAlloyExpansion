module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv6[] {
(all var123456 : File { ((once (var123456 in Trash)) => (always (var123456 in Trash)))})
}





