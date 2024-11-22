module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f,f1: (one File) {
((((f->f1) in link) && (Trash in f1)) => (f in Trash))
})
}





