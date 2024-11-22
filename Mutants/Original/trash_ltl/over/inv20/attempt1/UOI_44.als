module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv20[] {
(always (all p: (one File) {
((p in Trash) since (before (p !in Protected)))
}))
}





