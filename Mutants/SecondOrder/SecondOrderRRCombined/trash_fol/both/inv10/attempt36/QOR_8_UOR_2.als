module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
((inv4[]) && (some f: (one File) {
(all l: (one (f.link)) {
((l in Trash) => ((l.link) in Trash))
})
}))
}
pred inv4[] {
(no (Protected & Trash))
}