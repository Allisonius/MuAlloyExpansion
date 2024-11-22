module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f1,f2: (one File) {
(((f1->f2) = link) => (f2 in Trash))
})
}