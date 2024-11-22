module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some l,f: (one File) {
(((l->f) in link) && (l in Trash))
})
}