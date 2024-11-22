module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some x: (some File) {
(some y: (one File) {
((x->y) in link)
})
})
}