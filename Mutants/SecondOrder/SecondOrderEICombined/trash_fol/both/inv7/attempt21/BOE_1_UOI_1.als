module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(!(some l,f: (one File) {
(before ((link in (l->f)) && (l in Trash)))
}))
}