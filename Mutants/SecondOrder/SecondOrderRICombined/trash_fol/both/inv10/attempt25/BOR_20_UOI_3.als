module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f,l: (one File) {
((once (((f->l) in link) && (l in Trash))) => (f != Trash))
})
}