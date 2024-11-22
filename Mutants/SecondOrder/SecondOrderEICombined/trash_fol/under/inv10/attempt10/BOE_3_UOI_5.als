module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f: (one File),l: (one (f.link)) {
((l in Trash) => (all l1: (one (l.(*link))) {
(Trash in l1)
}))
})
}