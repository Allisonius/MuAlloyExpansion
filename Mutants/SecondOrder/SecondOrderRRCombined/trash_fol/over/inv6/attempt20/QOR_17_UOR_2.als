module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all x,y,z: (one File) {
(((x->y) in link) => (one z: (one File) {
((x->z) !in link)
}))
})
}