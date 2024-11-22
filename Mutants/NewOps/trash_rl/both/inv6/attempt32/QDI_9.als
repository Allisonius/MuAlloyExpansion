module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all l,f1,f2: (File - Protected) {
((((f1->l) in link) && ((f2->l) in link)) => (f1 = f2))
})
}





