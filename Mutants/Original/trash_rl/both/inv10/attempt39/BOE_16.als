module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f,f1: (one File) {
(((link in (f->f1)) && (f1 in Trash)) => (f in Trash))
})
}





