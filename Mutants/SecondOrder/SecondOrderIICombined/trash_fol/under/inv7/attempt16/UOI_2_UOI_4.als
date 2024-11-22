module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
((isLinked[f]) => (f !in Trash))
})
}
pred isLinked[f1: File] {
(all f2: (one File) {
((*(*(f1->f2))) in link)
})
}