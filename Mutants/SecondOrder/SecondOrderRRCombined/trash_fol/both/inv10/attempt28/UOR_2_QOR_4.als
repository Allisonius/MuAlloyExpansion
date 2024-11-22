module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(no f,lkd: (one File) {
(((lkd in Trash) && ((f->lkd) in link)) => (f in Trash))
})
}