module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(one a,b,c: (one Node) {
(((a !in b) && (a != c)) => (((a in (adj.b)) && (c in (b.adj))) => (c in (a.adj))))
})
}