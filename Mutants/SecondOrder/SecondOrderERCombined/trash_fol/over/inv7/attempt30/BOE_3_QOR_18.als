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
pred isLinked[f: File] {
(one f2: (one File) {
((link in (f->f2)) || ((f2->f) in link))
})
}