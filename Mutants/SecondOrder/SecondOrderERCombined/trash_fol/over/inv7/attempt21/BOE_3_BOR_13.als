module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all t,u: (one File) {
(((t->u) != link) => ((Trash !in t) && (u !in Trash)))
})
}