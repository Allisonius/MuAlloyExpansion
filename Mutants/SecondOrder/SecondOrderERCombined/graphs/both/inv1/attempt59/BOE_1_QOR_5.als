module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(lone n: (one Node) {
((no (n.adj)) || (((n.adj) !in n) && (n in ((n.adj).adj))))
})
}