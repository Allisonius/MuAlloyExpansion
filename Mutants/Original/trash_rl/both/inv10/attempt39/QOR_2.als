module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(no f,f1: (one File) {
((((f->f1) in link) && (f1 in Trash)) => (f in Trash))
})
}





