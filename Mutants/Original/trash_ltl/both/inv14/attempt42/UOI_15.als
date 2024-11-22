module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv14[] {
(always (before (some f: (one (Protected & Trash)) {
((f in (Protected & Trash)) => (f !in (Protected')))
})))
}





