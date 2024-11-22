module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all l1: (one (File.link)) {
(all l2: (File - Trash) {
((l2 & l1) = none)
})
})
}





