module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(eventually (some f: (one File) {
((after (eventually (f in Trash))) => (after (before (f !in Trash))))
}))
}





