module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some l: (one (File.link)) {
(all li: (one l) {
(li in Trash)
})
})
}