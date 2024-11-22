module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f,l,k: (one File) {
((once (((f->l) in link) && ((f->k) in link))) => (f = k))
})
}