module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all n1,n2: (one Node) {
((n1 in n2) || (n2 in (n1.(*adj))))
})
}