module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(one disj a,b,c: (one Node) {
(((a in (adj.b)) && (c in (one (b.adj)))) => (c in (a.adj)))
})
}