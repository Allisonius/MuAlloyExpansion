module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some f,l: (some File) {
(((f->l) in link) && (l !in Trash))
})
}