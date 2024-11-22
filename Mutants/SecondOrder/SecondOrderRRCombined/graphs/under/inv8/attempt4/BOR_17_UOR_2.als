module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv8[] {
(all disj a,b,c: (one Node) {
(((a in (adj.b)) && (c != (b.adj))) => (c in (a.adj)))
})
}