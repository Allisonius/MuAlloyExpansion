module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(eventually (some f: (one File) {
((historically (f in Trash)) => (after (always (eventually (f !in Trash)))))
}))
}





