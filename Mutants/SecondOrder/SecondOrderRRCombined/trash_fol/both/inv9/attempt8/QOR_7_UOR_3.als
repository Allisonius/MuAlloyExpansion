module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(some x,y,z: (one File) {
(((z != y) && ((x->y) in link)) => ((x->z) !in link))
})
}