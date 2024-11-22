module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all l1: (File + Protected) {
(some l2: (one (File.link)) {
(l1 !in l2)
})
})
}





