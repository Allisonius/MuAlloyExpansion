module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some t,u: (some File) {
(((t !in Trash) && (u !in Trash)) => ((t->u) in link))
})
}