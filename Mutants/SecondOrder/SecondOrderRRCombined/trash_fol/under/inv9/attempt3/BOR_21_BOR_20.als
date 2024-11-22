module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all t,u: (one File) {
(some x: (one File) {
(((t->u) != link) => ((u->x) !in link))
})
})
}