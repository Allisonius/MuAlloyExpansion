module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all x,y: (one File) {
(((x->y) !in link) => (Trash in y))
})
}