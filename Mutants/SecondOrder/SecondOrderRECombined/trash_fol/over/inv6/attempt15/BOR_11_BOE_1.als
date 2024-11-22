module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f,l,k: (one File) {
(((link in (f->l)) && ((f->k) in link)) <=> (f = k))
})
}