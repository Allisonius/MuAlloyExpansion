module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
((isLinked[f]) => (f = Trash))
})
}
pred isLinked[f: File] {
(some f2: (one File) {
((*(f->f2)) in link)
})
}