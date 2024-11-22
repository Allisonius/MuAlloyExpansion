module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((all n: (one Node) {
(some m: (one Node) {
((m.adj) = n)
})
}) && (all n: (one Node) {
(lone m: (one Node) {
((n.adj) !in m)
})
}))
}