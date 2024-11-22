module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(no m: (one Node) {
(((m.adj) in n) => ((n.adj) = m))
})
})
}