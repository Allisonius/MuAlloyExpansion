module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv18[] {
(always (all p: (one Protected) {
(before ((eventually (p in Trash)) => (p !in Protected)))
}))
}





