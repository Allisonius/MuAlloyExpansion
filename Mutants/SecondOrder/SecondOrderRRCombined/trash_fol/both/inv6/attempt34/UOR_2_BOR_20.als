module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f,f1,f2: (one File) {
((((f->f1) in link) && ((f1->f2) in link)) => (f1 !in f2))
})
}