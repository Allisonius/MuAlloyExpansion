module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
((inv4[]) && (all f: (one File) {
(one l: (one (f.link)) {
((l in Trash) => ((l.link) in Trash))
})
}))
}
pred inv4[] {
(no (Protected & Trash))
}