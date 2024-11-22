module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv10[] {
(always (all p: (one File) {
((once (p in Protected)) => (always (before (p in Protected))))
}))
}





