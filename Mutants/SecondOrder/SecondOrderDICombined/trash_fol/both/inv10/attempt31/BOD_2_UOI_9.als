module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all x: (one File),y: (one File) {
(((^(x->y)) in link) && (y in Trash))
})
}