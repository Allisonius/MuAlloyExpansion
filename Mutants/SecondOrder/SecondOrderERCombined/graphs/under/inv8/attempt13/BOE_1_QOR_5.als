module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(lone a,b,c: (one Node) {
((((a in (adj.b)) && (c in (b.adj))) => (c in (a.adj))) => ((a != b) && (a != c) && (b != c)))
})
}