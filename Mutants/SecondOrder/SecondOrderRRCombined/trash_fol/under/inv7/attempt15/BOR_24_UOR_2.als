module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all x: (one File) {
(some y: (one File) {
(((x->y) in link) => ((x != Trash) && (y !in Trash)))
})
})
}