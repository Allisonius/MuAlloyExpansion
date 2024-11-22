module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all f: (one File) {
(some f1: (one File) {
(once ((f != f1) && ((f.link) !in (f1.link))))
})
})
}