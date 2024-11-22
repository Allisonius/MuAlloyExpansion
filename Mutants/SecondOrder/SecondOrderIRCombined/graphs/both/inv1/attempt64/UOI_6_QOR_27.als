module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(after ((all n: (one Node) {
(one m: (one Node) {
((m.adj) = n)
})
}) && (all n: (one Node) {
(no m: (one Node) {
((n.adj) = m)
})
})))
}