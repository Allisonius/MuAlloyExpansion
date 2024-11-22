module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all x: (one File),t,u: (one File) {
((((x->t) in (~link)) && ((x->u) in link)) => (x = u))
})
}





