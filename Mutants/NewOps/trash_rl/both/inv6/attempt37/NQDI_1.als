module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all disj d,e1,e2: (one univ),disj f: (one File) {
(((d in File) && ((e1->d) in link) && ((e2->d) in link)) => (e1 = e2))
})
}





