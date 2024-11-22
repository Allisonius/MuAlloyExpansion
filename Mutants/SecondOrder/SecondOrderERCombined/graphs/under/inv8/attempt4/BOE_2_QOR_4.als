module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(no disj a,b,c: (one Node) {
((((adj.b) in a) && (c in (b.adj))) => (c in (a.adj)))
})
}