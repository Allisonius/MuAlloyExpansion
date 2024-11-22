module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(no n,m: (one Node) {
(((m.adj) in n) => ((n.adj) in m))
})
}