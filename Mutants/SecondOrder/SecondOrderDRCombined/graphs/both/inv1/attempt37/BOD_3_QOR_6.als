module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(one n,m: (one Node) {
((m.adj) = m)
})
}