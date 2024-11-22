module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f: (one Protected) {
(((link.f) in Trash) => (f in Trash))
})
}





