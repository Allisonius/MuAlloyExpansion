module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(no disj a,b,c: (one Node) {
(((a in (one (adj.b))) && (c in (b.adj))) => (c in (a.adj)))
})
}