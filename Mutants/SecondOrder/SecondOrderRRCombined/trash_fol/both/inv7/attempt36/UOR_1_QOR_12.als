module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
(no f1: (one File) {
((f != f1) && ((f->f1) in link))
})
})
}