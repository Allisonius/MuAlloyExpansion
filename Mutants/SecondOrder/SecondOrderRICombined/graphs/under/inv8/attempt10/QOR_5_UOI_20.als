module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(lone a,b,c: (one Node) {
(((a != b) && (a != c)) => (((a in (adj.b)) && (c in (one (b.adj)))) => (c in (a.adj))))
})
}