module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all f: (one File) {
(some f1: (one File) {
((f != f1) && ((f.link) !in (f1.(^link))))
})
})
}