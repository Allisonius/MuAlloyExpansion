module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(historically (all f: (one File) {
(((eventually (some Trash)) && (f in Trash)) => (always (f in Trash)))
}))
}





