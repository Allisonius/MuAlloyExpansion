module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some f,lkd: (one File) {
(((f->lkd) in link) => (f in Trash))
})
}