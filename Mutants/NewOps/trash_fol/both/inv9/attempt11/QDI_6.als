module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all x: (File - Trash) {
(all y,z: (one File) {
(((z != y) && ((x->y) in link)) => ((x->z) !in link))
})
})
}





