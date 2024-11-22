module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(no x: (one Trash) {
(lone y: (one File) {
((x->y) in link)
})
})
}