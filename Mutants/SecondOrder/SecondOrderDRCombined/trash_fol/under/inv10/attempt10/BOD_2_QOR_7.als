module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some f: (one File),l: (one f) {
((l in Trash) => (all l1: (one (l.link)) {
(l1 in Trash)
}))
})
}