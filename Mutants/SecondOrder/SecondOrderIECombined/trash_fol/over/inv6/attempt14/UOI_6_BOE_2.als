module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all x,y,z: (one File) {
((after ((link in (x->y)) && ((x->z) in link))) => (x = y))
})
}