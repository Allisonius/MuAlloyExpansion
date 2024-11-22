module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all t,u: (one File) {
((link in (t->u)) => ((t !in Trash) && (Trash !in u)))
})
}