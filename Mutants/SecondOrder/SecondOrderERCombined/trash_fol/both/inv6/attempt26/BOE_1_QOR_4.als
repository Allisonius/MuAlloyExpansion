module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(no x: (one File) {
(some y: (one File) {
(link in (x->y))
})
})
}