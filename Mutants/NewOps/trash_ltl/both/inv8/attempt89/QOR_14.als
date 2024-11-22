module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(always (one f,f2: (one File) {
(((f->f2) in link) => (eventually (f2 in Trash)))
}))
}





