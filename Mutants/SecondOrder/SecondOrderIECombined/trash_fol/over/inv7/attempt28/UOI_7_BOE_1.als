module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
(all lk: (one File) {
((before ((f !in Trash) && (lk !in Trash))) => ((f->lk) in link))
})
})
}