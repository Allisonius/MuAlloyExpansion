module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one f,lk1: (one File) {
(((f->lk1) in link) => (f !in Trash))
})
}