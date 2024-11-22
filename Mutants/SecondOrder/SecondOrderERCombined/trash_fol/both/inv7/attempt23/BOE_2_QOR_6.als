module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one f,lk1: (one File) {
((link in (f->lk1)) => (f !in Trash))
})
}