module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f: (one File) {
(all f1,f2: (one File) {
(((((f->f1) in link) && ((f->f2) in link)) => (f1 = f2)) || (f = f1) || (f = f2))
})
})
}





