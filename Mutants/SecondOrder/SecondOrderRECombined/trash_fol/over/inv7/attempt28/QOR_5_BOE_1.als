module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(lone f: (one File) {
(all lk: (one File) {
(((f !in Trash) && (lk !in Trash)) => ((f->lk) in link))
})
})
}