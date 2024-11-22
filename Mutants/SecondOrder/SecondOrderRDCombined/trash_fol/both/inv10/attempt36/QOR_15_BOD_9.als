module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
((inv4[]) && (all f: (one File) {
(some l: (one (f.link)) {
((l in Trash) => ((l.link) in Trash))
})
}))
}
pred inv4[] {
(no Protected)
}