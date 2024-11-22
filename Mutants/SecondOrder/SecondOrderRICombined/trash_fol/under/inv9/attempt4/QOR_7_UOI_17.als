module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(some t,u,v,x: (one File) {
((((t->u) in link) && ((v->x) in (*link))) => ((u->v) !in link))
})
}