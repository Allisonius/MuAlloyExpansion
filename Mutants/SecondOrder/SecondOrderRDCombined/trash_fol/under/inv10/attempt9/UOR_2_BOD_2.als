module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f: (one File),l: (one f),l1: (one (l.link)) {
((l in Trash) => (l1 in Trash))
})
}