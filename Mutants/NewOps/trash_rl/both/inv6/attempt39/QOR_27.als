module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
((all e1,e2: (one univ),f: (one File) {
((((e1->f) in link) && ((e2->f) in link)) => (e1 = e2))
}) && (one f: (one File) {
(lone (link.f))
}))
}





