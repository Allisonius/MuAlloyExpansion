module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(all f1: (one File),f2: (one Trash) {
(((f1->f2) in link) => (eventually (f2 in Trash)))
})
}





