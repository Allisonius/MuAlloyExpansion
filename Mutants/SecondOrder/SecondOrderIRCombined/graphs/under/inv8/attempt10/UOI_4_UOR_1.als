module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv8[] {
(all a,b,c: (one Node) {
((always ((a != b) && (a != c))) => (((a in (adj.b)) && (c in (b.adj))) => (c in (a.adj))))
})
}