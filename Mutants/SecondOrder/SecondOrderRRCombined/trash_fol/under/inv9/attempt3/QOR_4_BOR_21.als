module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(no t,u: (one File) {
(some x: (one File) {
(((t->u) in link) => ((u->x) != link))
})
})
}