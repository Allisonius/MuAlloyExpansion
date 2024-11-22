module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(lone x,y: (one File) {
(((x->y) in link) => (all z: (one File) {
((z != x) && ((x->z) = link))
}))
})
}