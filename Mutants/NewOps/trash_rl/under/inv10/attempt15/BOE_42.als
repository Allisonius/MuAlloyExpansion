module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f1,f2,f3: (one univ) {
((((f1->f2) in link) && ((f2->f3) in link) && (f2 in Trash)) => (Trash in f3))
})
}





