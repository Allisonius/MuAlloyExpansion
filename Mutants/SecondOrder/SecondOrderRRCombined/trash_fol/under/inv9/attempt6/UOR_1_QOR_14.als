module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all x: (one File) {
(some y: (one File) {
(all z: (one File) {
((((x->y) in link) && ((y->z) in link)) => (y != z))
})
})
})
}