module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some x: (some Trash) {
(all y: (one File) {
((x->y) in link)
})
})
}