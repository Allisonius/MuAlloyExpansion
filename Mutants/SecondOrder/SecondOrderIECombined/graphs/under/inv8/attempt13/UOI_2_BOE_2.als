module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all a,b,c: (one Node) {
((historically ((a != b) && (a != c) && (b != c))) => ((c in (a.adj)) => ((a in (adj.b)) && (c in (b.adj)))))
})
}