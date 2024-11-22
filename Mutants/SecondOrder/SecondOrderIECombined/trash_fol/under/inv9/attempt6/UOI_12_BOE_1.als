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
((y != z) => (((x->y) in (^link)) && ((y->z) in link)))
})
})
})
}