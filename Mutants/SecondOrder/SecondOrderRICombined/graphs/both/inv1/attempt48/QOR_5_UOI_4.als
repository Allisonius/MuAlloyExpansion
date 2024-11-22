module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(lone n: (one Node) {
(always ((n !in (n.adj)) && (n in ((n.adj).adj))))
})
}