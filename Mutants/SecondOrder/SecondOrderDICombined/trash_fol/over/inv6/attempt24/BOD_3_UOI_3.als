module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all x,y: (one File) {
(all z: (one File) {
(once ((z != y) && ((x->z) !in link)))
})
})
}