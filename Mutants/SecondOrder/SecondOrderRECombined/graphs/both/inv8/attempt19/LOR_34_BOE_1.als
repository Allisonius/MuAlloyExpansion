module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
((inv5[]) && (all a,b,c: (one Node) {
((((a in (adj.b)) && (c in (b.adj))) => (c in (a.adj))) => ((a != b) && (a != c) && (b != c)))
}))
}
pred inv5[] {
((no (iden & adj)) || (all n: (one Node) {
(n !in (n.adj))
}))
}