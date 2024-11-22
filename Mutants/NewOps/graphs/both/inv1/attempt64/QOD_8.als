module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((one m: (one Node) {
((m.adj) = ((Node)))
}) && (all n: (one Node) {
(one m: (one Node) {
((n.adj) = m)
})
}))
}





