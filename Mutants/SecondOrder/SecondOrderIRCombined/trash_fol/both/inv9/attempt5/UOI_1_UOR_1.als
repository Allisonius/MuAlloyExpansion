module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(some x,y,z: (one File) {
(((~(x->y)) in link) => ((y->z) !in link))
})
}