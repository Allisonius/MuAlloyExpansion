module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(all n1,n2: (one Node) {
(((n1.adj) = n2) <=> (n2 = n1))
})
}