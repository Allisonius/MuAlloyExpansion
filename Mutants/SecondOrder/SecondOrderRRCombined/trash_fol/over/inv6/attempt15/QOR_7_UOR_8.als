module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some f,l,k: (lone File) {
((((f->l) in link) && ((f->k) in link)) => (f = k))
})
}