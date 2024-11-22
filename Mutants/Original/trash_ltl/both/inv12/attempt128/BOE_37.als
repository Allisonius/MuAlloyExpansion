module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(always (all f: (one File) {
((always (Trash in f)) since (after (some (f & Trash))))
}))
}





