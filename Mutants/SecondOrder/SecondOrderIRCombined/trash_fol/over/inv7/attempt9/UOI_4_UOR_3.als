module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f,l: (one File) {
(always (((f->l) in link) && (l !in Trash)))
})
}