module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some t,u: (one File) {
(((t->u) in link) => (once ((t !in Trash) && (u !in Trash))))
})
}