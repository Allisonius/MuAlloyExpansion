module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all link: (one (File.link)) {
((link in Trash) => (all l: (one link) {
(Trash in l)
}))
})
}