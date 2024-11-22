module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all disj a,b,c: (one Node) {
((c in (a.adj)) => (((adj.b) in a) && (c in (b.adj))))
})
}