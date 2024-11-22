module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(no n: (one Node) {
(before ((((n.adj).adj) = n) && ((n.adj) != none)))
})
}