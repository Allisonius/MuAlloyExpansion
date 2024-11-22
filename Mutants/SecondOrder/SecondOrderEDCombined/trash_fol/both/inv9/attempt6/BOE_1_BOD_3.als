module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all l1: (one (File.link)) {
(some l2: (one File) {
(l2 !in l1)
})
})
}