module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(no a,b,c: (one Node) {
(((a != b) && (a != c) && (b != c)) => (((a in (adj.b)) && (c in (lone (b.adj)))) => (c in (a.adj))))
})
}