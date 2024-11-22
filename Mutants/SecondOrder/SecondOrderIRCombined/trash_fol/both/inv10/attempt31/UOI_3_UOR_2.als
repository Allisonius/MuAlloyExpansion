module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all x: (one File),y: (one File) {
((once (((x->y) in link) && (y in Trash))) => (x in Trash))
})
}