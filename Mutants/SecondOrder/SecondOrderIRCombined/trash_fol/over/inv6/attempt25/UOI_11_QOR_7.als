module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some x,y: (one File) {
(((x->y) in link) => (all z: (one File) {
(eventually ((z != x) && ((x->z) !in link)))
}))
})
}