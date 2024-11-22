module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f: (one File) {
(some f1,f2: (one File) {
(((f->f1) in link) => (f1 != f2))
})
})
}