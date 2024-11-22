module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((lone m: (one Node) {
(all n: (one Node) {
((m.adj) = n)
})
}) && (all n: (one Node) {
(one m: (one Node) {
((n.adj) = m)
})
}))
}





