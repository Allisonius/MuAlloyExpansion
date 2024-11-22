module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv8[] {
(all n: (one Node) {
(n in (some (adj.((n.adj).adj))))
})
}