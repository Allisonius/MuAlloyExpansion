module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f,lkd: (one File) {
((f in Trash) => ((lkd in Trash) && ((f->lkd) in link)))
})
}