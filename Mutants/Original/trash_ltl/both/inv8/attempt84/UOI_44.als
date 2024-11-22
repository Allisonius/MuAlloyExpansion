module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(all f,g: (one File) {
(((f->g) in link) => (eventually (historically (always (f in Trash)))))
})
}





