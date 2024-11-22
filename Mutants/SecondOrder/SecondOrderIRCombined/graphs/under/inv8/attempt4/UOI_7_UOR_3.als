module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv8[] {
(all disj a,b,c: (one Node) {
(((a in (lone (adj.b))) && (c in (b.adj))) => (c in (a.adj)))
})
}