module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some x,y: (lone File) {
(((x->y) in link) => (all z: (one File) {
((z != y) && ((x->z) !in link))
}))
})
}