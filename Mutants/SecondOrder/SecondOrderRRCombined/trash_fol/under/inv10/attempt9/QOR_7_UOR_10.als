module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some f: (one File),l: (set (f.link)),l1: (one (l.link)) {
((l in Trash) => (l1 in Trash))
})
}