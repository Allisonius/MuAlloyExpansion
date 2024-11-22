module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(always (once (all f: (one File) {
((after (f in Trash)) => (some (f & Trash)))
})))
}





