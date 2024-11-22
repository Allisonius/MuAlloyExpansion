module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(lone f,lkd: (one File) {
((lkd in Trash) && ((f->lkd) in link))
})
}