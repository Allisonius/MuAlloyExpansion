module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv14[] {
(always (after (all f: (one ((File & Protected) & Trash)) {
(f in (File & Trash))
})))
}





