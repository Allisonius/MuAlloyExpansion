module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f,lkd: (one File) {
((eventually ((Trash in lkd) && ((f->lkd) in link))) => (f in Trash))
})
}