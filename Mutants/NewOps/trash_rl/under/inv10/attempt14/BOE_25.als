module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f1,f2,f3: (one File) {
(((link in (f1->f2)) && ((f2->f3) in link) && (f2 in Trash)) => (f3 in Trash))
})
}





