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
((Trash !in f) => ((f->lk) in link))
})
})
}