module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all x,y: (one File) {
(((x->y) in link) => (no z: (one File) {
((x->z) !in link)
}))
})
}