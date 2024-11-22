module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(one n: (one Node) {
((n !in (n.adj)) && (n in (lone ((n.adj).adj))))
})
}