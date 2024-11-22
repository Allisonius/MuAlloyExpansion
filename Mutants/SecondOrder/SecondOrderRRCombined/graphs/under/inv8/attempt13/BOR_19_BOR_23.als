module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all a,b,c: (one Node) {
(((a != b) && (a != c) && (b = c)) => (((a != (adj.b)) && (c in (b.adj))) => (c in (a.adj))))
})
}