module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all l1: (one (File.link)) {
(some l2: (File + Protected) {
(l1 !in l2)
})
})
}





