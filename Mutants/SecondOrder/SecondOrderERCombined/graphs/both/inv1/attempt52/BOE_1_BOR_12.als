module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(((Node.adj) != n) || (n in (Node.(^adj))))
})
}