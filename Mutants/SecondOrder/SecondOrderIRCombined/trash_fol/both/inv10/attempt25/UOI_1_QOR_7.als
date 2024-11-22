module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some f,l: (one File) {
((before (((f->l) in link) && (l in Trash))) => (f in Trash))
})
}