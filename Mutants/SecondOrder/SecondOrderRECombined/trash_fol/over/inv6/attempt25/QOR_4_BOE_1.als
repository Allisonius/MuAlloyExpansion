module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(no x,y: (one File) {
((all z: (one File) {
((z != x) && ((x->z) !in link))
}) => ((x->y) in link))
})
}