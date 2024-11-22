module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
((isLinked[((File))]) => (((File)) !in Trash))
}
pred isLinked[f: File] {
(some f2: (one File) {
(((f->f2) in link) => (f2 in Trash))
})
}





