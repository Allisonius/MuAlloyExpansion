module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(lone f,l,k: (one File) {
((((f->l) in link) && ((f->k) in link)) => (f = k))
})
}