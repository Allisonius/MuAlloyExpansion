module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all disj a,b,c: (one Node) {
((eventually ((a in (adj.b)) && (c in (b.adj)))) => (c = (a.adj)))
})
}