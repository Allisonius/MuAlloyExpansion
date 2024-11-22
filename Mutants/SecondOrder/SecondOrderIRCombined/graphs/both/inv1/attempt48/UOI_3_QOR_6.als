module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(one n: (one Node) {
(once ((n !in (n.adj)) && (n in ((n.adj).adj))))
})
}