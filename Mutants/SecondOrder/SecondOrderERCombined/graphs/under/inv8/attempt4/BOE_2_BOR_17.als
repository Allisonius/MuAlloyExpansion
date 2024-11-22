module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all disj a,b,c: (one Node) {
((((adj.b) in a) && (c != (b.adj))) => (c in (a.adj)))
})
}