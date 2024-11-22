module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all l1,l2: (File & Trash) {
(((l1->l2) in link) => ((l1 !in Trash) && (l2 !in Trash)))
})
}





