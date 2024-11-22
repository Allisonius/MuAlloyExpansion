module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some l,f: (one File) {
(((link in (l->f)) && (f in Trash)) => (l in Trash))
})
}