module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(no x: (one File) {
(all y: (one File) {
((x->y) in link)
})
})
}