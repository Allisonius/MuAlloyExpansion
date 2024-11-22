module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv8[] {
(no n: (one Node) {
(n in (adj.((n.adj).adj)))
})
}