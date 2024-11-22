module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(lone f: (one File) {
(some lk: (one File) {
(((f->lk) in link) => (f !in Trash))
})
})
}