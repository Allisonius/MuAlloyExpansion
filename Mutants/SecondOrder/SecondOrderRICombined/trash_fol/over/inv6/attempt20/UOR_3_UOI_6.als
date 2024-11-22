module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all x,y,z: (one File) {
(((x->y) in link) => (all z: (one File) {
((x->z) !in (~link))
}))
})
}