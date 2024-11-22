module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(eventually (((Node.adj) in n) || (n in (Node.(^adj)))))
})
}