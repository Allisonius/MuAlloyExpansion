module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(before ((no (n.adj)) || (((n.adj) !in n) && (n in ((n.adj).adj)))))
})
}