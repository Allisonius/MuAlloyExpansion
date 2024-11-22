module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv10[] {
(always (all f: (one File) {
(always ((eventually (Protected in f)) => (f in Protected)))
}))
}





