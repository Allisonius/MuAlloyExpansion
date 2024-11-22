module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(eventually (always (all f: (one File) {
((Trash !in f) => (f in (Trash')))
})))
}





