module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all x: (one File),y: (one File) {
((((x->y) != link) && (y in Trash)) => (x in Trash))
})
}