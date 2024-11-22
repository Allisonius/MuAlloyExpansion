module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(no t,u: (one File) {
(((t in Trash) && (u in Trash)) => ((t->u) != link))
})
}