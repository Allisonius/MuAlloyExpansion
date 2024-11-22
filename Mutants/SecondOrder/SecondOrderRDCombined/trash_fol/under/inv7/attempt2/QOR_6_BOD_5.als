module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one t,u: (one File) {
((t in Trash) || ((t->u) !in link))
})
}