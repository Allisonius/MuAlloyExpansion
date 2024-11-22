module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some f: (one File) {
(some l: (one (f.link)) {
((l != Trash) => (f in Trash))
})
})
}