module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f: (one File) {
(all l: (one (f.(*link))) {
((f in Trash) => ((l.link) in Trash))
})
})
}