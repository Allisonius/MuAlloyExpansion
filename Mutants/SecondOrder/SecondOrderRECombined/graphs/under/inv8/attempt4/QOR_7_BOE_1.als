module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some disj a,b,c: (one Node) {
((c in (a.adj)) => ((a in (adj.b)) && (c in (b.adj))))
})
}