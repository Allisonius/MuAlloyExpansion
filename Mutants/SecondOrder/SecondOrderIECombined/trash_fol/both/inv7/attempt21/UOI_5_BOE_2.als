module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(!(some l,f: (one File) {
(eventually (((l->f) in link) && (Trash in l)))
}))
}