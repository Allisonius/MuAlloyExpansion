module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
((no adj) || (((n.adj) !in n) && (n in ((n.adj).adj))))
})
}