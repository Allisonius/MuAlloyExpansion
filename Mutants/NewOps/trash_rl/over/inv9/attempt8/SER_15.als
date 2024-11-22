module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all l1,l2: (one (Protected.link)) {
disjoint[l1,l2]
})
}





