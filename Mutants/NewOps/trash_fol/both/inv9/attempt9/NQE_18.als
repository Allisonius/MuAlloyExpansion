module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(some f1: (one File) {
(all f: (one File) {
((f != f1) && ((f.link) !in (f1.link)))
})
})
}





