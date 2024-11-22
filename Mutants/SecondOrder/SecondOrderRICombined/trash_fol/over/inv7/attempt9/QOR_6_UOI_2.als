module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one f,l: (one File) {
(historically (((f->l) in link) && (l !in Trash)))
})
}