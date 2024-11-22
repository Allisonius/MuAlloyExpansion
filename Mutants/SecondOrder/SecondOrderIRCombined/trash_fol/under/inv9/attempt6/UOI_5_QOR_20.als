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
(one z: (one File) {
((eventually (((x->y) in link) && ((y->z) in link))) => (y != z))
})
})
})
}