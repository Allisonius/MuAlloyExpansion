module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((all n: (one Node) {
(one m: (one Node) {
(m = n)
})
}) && (some n: (one Node) {
(one m: (one Node) {
((n.adj) = m)
})
}))
}