module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n1,n2: (one Node) {
((n1 in ((^adj).n2)) || (n2 in (adj.n1)))
})
}