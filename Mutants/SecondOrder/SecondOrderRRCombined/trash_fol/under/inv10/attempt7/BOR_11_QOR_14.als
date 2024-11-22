module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all link: (one (File.link)) {
((link in Trash) <=> (no l: (one link) {
(l in Trash)
}))
})
}