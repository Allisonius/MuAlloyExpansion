module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all x: (one File) {
(all y: (one File) {
(all z: (one File) {
((once (((x->y) in link) && ((x->z) != link))) => (y != z))
})
})
})
}