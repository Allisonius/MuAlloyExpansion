module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all l,f: (one File) {
((link in (l->f)) => (l !in Trash))
})
}