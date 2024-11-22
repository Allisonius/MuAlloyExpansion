module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv18[] {
(always (no f: (one Protected) {
((f in Trash) triggered (after (f !in Protected)))
}))
}





