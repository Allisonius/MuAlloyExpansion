module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(before ((all n: (one Node) {
(lone m: (one Node) {
((m.adj) = n)
})
}) && (no n: (one Node) {
(one m: (one Node) {
((n.adj) = m)
})
})))
}