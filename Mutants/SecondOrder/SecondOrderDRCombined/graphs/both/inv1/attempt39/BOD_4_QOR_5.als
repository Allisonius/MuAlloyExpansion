module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(lone n,m: (one Node) {
((n = m) <=> ((m.adj) = n))
})
}