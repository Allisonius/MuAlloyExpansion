module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv2[] {
(all n1,n2: (one Node) {
(n2 in (univ - (n1.adj)))
})
}