module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all x: (one File) {
(all y: (one File) {
((x->y) = link)
})
})
}