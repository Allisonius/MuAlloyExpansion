module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all t,u: (File & Protected) {
(some x: (one File) {
(((t->u) in link) => ((u->x) !in link))
})
})
}





