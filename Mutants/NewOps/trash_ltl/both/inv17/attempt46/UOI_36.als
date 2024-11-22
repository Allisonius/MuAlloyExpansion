module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv17[] {
(always (all f: (one File) {
((before ((f !in File) since (f in Trash))) && (eventually (f in Trash)))
}))
}





