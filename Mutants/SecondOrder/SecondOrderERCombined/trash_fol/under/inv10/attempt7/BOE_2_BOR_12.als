module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all link: (one (File.link)) {
((Trash != link) => (all l: (one link) {
(l in Trash)
}))
})
}