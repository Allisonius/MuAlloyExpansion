module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some y: (one File) {
(all x: (one File) {
(((x->y) in link) => ((x !in Trash) && (y !in Trash)))
})
})
}





