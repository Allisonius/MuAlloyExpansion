module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(always (eventually (all f: (one File) {
((f in Trash) since (eventually (some (f & Trash))))
})))
}





