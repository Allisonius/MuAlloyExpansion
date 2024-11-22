module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all l,f: (File - Trash) {
((((l->f) in link) && (f in Trash)) => (l in Trash))
})
}





