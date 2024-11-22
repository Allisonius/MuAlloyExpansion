module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
((eventually (some Trash)) && (all f: (one File) {
((always (f in Trash)) => (once (f in Trash)))
}))
}





