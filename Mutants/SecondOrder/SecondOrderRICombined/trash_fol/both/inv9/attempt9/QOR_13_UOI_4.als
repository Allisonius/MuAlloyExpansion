module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all f: (one File) {
(lone f1: (one File) {
(always ((f != f1) && ((f.link) !in (f1.link))))
})
})
}