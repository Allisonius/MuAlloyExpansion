module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(no l,f: (one File) {
(((l->f) in link) => (l in Trash))
})
}