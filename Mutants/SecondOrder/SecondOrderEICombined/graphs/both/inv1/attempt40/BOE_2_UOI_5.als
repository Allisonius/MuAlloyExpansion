module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n,m: (one Node) {
((m in (n.(*adj))) => ((m.adj) in n))
})
}