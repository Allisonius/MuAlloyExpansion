module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv17[] {
(always (all f: (one File) {
(((f !in File) since (Trash in f)) && (eventually (f in Trash)))
}))
}





