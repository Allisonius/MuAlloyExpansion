module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some f1,f2: (set File) {
(((f1->f2) in link) => (f2 in Trash))
})
}