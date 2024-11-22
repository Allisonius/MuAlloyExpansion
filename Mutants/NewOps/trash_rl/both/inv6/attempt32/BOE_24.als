module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all l,f1,f2: (one File) {
(((link in (f1->l)) && ((f2->l) in link)) => (f1 = f2))
})
}





