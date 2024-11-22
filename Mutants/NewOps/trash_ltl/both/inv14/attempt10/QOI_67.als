module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv14[] {
(no var123456 : File { ((var123456 in (Protected & Trash)) => (after (var123456 !in Protected)))})
}





