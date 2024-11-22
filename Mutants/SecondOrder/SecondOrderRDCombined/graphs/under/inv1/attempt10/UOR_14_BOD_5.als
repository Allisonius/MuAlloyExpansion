module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
((some adj) || (n in ((n.adj).adj)))
})
}