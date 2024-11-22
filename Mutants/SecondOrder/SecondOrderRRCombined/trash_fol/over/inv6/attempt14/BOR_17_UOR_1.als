module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all x,y,z: (one File) {
((((x->y) in link) && ((x->z) != link)) => (x = y))
})
}