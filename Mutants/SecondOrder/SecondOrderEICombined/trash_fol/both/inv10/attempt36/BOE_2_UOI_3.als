module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(once ((inv4[]) && (all f: (one File) {
(all l: (one (f.link)) {
((Trash in l) => ((l.link) in Trash))
})
})))
}
pred inv4[] {
(no (Protected & Trash))
}