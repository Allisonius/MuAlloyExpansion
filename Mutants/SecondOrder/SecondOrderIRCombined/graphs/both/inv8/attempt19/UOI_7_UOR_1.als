module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv8[] {
((inv5[]) && (all a,b,c: (one Node) {
((before ((a != b) && (a != c) && (b != c))) => (((a in (adj.b)) && (c in (b.adj))) => (c in (a.adj))))
}))
}
pred inv5[] {
((no (iden & adj)) && (all n: (one Node) {
(n !in (n.adj))
}))
}