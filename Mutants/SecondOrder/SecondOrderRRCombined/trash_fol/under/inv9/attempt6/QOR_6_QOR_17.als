module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(one x: (one File) {
(all y: (one File) {
(no z: (one File) {
((((x->y) in link) && ((y->z) in link)) => (y != z))
})
})
})
}