module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
(some f1: (one File) {
(always ((f = f1) && ((f->f1) in link)))
})
})
}