module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(lone x,y,z: (one File) {
(((x->y) in link) => ((x->z) !in link))
})
}