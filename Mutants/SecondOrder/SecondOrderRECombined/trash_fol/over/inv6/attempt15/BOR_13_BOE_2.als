module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f,l,k: (one File) {
((((f->l) = link) && (link in (f->k))) => (f = k))
})
}