module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((one n: (one Node) {
(lone m: (one Node) {
((m.adj) = n)
})
}) && (all n: (one Node) {
(one m: (one Node) {
(n = m)
})
}))
}