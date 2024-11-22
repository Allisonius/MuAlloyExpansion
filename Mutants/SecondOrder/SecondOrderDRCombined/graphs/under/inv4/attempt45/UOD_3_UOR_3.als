module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(all n1,n2: (one Node) {
(n1 in (n2.adj))
})
}