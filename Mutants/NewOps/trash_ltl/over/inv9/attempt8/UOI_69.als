module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv9[] {
((always (no (Protected & Trash))) && (always (all p: (one Protected) {
(always (eventually (p !in Trash)))
})))
}





