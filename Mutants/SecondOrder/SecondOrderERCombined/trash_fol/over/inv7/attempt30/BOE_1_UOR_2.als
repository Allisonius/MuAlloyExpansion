module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
((f !in Trash) => (isLinked[f]))
})
}
pred isLinked[f: File] {
(some f2: (one File) {
(((f->f2) in link) || ((f2->f) in link))
})
}