module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv14[] {
(after (all f: (one (Protected & Trash)) {
(f !in Trash)
}))
}





