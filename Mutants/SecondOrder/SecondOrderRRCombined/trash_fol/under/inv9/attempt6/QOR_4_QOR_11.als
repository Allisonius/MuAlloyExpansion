module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(no x: (one File) {
(lone y: (one File) {
(all z: (one File) {
((((x->y) in link) && ((y->z) in link)) => (y != z))
})
})
})
}