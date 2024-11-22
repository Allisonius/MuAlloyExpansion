module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
(some lk: (one File) {
((link in (f->lk)) => ((f !in Trash) || (lk !in Trash)))
})
})
}