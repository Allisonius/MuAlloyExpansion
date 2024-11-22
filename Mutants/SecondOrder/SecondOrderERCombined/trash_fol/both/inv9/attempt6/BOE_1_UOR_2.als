module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all l1: (one (File.link)) {
(some l2: (one (File.link)) {
(l2 !in l1)
})
})
}