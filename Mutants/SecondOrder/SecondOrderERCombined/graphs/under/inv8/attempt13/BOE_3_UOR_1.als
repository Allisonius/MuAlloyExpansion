module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv8[] {
(all a,b,c: (one Node) {
(((a != b) && (a != c) && (b != c)) => ((((adj.b) in a) && (c in (b.adj))) => (c in (a.adj))))
})
}