module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f,lkd: (one File) {
((eventually ((lkd in Trash) && ((f->lkd) in link))) => (f in Trash))
})
}