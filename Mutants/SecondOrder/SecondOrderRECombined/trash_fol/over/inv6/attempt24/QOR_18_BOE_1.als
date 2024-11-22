module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all x,y: (one File) {
((some z: (one File) {
((z != y) && ((x->z) !in link))
}) => ((x->y) in link))
})
}