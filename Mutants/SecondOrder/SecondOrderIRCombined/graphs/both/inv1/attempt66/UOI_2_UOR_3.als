module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(historically ((all n: (one Node) {
(lone m: (one Node) {
((m.adj) = n)
})
}) && (all n: (one Node) {
(lone m: (one Node) {
((n.adj) = m)
})
})))
}