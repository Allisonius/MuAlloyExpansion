module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(one a,b,c: (one Node) {
(((a != b) && (a != c)) => (((a in (adj.b)) && (c in (some (b.adj)))) => (c in (a.adj))))
})
}