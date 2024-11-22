module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all l,f: (one File) {
((link in (l->f)) => (Trash !in l))
})
}