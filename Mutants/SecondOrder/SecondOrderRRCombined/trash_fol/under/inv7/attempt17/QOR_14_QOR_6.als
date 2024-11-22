module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one f: (one File) {
(one lk: (one File) {
(((f->lk) in link) => ((f !in Trash) && (lk !in Trash)))
})
})
}