module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(no f: (one File) {
(no l: (one (f.link)) {
((l in Trash) => (all f: (one File) {
(f in Trash)
}))
})
})
}