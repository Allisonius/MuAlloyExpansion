module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(no x,y: (one File) {
(((x->y) in link) => (all z: (one File) {
(after ((z != y) && ((x->z) !in link)))
}))
})
}