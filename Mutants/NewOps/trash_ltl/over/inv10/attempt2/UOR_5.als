module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv10[] {
(eventually (all f: (one Protected) {
((always (f !in Trash)) && (always (f !in File)))
}))
}





