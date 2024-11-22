module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all a,b,c: (one Node) {
((historically ((a != b) && (a != c))) => ((((adj.b) in a) && (c in (b.adj))) => (c in (a.adj))))
})
}