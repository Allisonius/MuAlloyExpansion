module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (one Node) {
(eventually ((((n.adj).adj) = n) && ((n.adj) != none)))
})
}