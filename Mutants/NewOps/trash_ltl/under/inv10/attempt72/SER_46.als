module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv10[] {
(always (all f: (one Protected) {
((once (f in Trash)) => (always (f in Protected)))
}))
}





