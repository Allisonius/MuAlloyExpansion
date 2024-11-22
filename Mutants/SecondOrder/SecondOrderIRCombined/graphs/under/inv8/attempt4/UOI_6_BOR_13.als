module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all disj a,b,c: (one Node) {
((after ((a = (adj.b)) && (c in (b.adj)))) => (c in (a.adj)))
})
}