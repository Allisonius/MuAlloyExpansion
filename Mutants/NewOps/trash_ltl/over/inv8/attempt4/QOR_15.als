module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(always (some f,g: (one File) {
(((f->g) in link) => (eventually (always (f in Trash))))
}))
}





