module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(some x,y,z: (one File) {
((link in (x->y)) => ((y->z) !in link))
})
}