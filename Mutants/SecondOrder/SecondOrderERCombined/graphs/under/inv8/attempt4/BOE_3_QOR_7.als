module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some disj a,b,c: (one Node) {
(((a in (adj.b)) && ((b.adj) in c)) => (c in (a.adj)))
})
}