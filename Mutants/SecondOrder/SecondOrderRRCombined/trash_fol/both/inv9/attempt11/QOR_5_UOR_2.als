module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(lone x: (one File) {
(all y,z: (one File) {
(((z != y) && ((x->y) in link)) => ((x->z) !in link))
})
})
}