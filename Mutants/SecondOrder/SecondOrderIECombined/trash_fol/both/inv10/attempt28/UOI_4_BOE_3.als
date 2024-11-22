module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f,lkd: (one File) {
((always ((lkd in Trash) && (link in (f->lkd)))) => (f in Trash))
})
}