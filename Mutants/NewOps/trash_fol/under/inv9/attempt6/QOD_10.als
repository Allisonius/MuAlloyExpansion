module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all y: (one File) {
(all z: (one File) {
((((((File))->y) in link) && ((y->z) in link)) => (y != z))
})
})
}





