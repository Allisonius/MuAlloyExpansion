module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some f: (one File) {
(some f1: (one File) {
((f != f1) && ((f->f1) in link))
})
})
}





