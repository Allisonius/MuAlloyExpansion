module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f,u: (one File) {
((((f->u) = link) && (Trash in u)) => (u in Trash))
})
}