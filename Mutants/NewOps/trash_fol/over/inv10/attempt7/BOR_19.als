module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all l1,l2: (one File) {
(((l1->l2) != link) => (l2 in Trash))
})
}





