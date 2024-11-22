module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(always (all f,f2: (one File) {
((link in (f->f2)) => (eventually (f2 in Trash)))
}))
}





