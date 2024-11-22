module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(no x,y,z: (one File) {
(historically (((x->y) in link) && ((y->z) !in link)))
})
}