module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(!(no l,f: (set File) {
(((l->f) in link) && (l in Trash))
}))
}