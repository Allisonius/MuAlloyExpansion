module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(once ((all n: (one Node) {
(one m: (one Node) {
(m = n)
})
}) && (all n: (one Node) {
(one m: (one Node) {
((n.adj) = m)
})
})))
}