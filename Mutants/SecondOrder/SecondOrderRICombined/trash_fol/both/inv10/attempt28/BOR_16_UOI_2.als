module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f,lkd: (one File) {
((historically ((lkd in Trash) && ((f->lkd) = link))) => (f in Trash))
})
}