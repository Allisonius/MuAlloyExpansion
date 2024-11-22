module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f: (one File) {
(some f1,f2: (one File) {
(((link in (f->f1)) && ((f->f2) in link)) => (f1 = f2))
})
})
}