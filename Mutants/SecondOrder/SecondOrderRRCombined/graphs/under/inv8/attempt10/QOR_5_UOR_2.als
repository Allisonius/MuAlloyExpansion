module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv8[] {
(lone a,b,c: (one Node) {
(((a != b) && (a != c)) => (((a in (adj.b)) && (c in (b.adj))) => (c in (a.adj))))
})
}