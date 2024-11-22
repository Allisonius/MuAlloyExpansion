module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all e1,e2: (one univ),f: (one File) {
((((e1->f) in link) && (link in (e2->f))) => ((e1 = e2) && (lone (link.f))))
})
}





