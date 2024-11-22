module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(no x,y,z: (one File) {
(((x->y) in link) => (all z: (one File) {
(link !in (x->z))
}))
})
}