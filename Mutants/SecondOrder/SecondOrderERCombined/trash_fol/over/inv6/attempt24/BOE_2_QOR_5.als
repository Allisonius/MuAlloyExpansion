module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(lone x,y: (one File) {
((link in (x->y)) => (all z: (one File) {
((z != y) && ((x->z) !in link))
}))
})
}