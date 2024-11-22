module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv18[] {
(before (always (all p: (one Protected) {
((always (p !in Protected)) => (once (p in Trash)))
})))
}





