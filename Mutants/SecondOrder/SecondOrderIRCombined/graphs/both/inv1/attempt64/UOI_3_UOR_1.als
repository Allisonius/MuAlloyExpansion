module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(once ((all n: (one Node) {
(one m: (one Node) {
((m.adj) = n)
})
}) && (all n: (one Node) {
(one m: (one Node) {
((n.adj) = m)
})
})))
}