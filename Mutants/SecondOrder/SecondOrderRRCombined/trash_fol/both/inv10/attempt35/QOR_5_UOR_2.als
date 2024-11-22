module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(lone f: (one File) {
(all l: (one (f.link)) {
((l in Trash) => (all f: (one File) {
(f in Trash)
}))
})
})
}