module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all x: (one File),t,u: (one File) {
(((link in (x->t)) && ((x->u) in link)) => (x !in u))
})
}