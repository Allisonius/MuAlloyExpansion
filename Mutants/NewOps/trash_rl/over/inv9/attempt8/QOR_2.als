module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(no l1,l2: (one (File.link)) {
disjoint[l1,l2]
})
}





