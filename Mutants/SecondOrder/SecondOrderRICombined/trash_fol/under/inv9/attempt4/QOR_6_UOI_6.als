module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(one t,u,v,x: (one File) {
((after (((t->u) in link) && ((v->x) in link))) => ((u->v) !in link))
})
}