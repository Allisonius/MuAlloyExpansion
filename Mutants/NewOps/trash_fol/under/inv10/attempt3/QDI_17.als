module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all l: (one (File.link)) {
((l in Trash) => (all l1: (File & Protected) {
(l1 in Trash)
}))
})
}





