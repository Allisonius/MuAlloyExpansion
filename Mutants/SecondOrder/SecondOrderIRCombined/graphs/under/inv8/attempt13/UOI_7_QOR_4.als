module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(no a,b,c: (one Node) {
(((a != b) && (a != c) && (b != c)) => ((before ((a in (adj.b)) && (c in (b.adj)))) => (c in (a.adj))))
})
}