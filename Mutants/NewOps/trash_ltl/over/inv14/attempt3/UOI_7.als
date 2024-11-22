module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv14[] {
(before (always (all f: (one Trash) {
(always (after (f !in Protected)))
})))
}





