module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(lone n: (one Node) {
(before (((n.adj) in Node) && (n in ((n.adj).adj))))
})
}