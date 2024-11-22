module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv18[] {
(eventually (always (all p: (one Protected) {
((p !in Trash) until (p !in Protected))
})))
}





