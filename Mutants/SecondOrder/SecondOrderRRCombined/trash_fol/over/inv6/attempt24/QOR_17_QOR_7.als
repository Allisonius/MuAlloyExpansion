module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some x,y: (one File) {
(((x->y) in link) => (one z: (one File) {
((z != y) && ((x->z) !in link))
}))
})
}