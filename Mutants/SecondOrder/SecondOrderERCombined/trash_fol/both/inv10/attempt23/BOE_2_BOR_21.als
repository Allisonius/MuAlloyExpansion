module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all x,y: (one File) {
(((link in (x->y)) && (y in Trash)) => (x !in Trash))
})
}