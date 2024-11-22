module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all x,y: (one File) {
(all z: (one File) {
((z != x) && ((x->z) !in link))
})
})
}