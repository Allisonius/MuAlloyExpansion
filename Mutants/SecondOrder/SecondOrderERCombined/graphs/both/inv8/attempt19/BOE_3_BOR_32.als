module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
((inv5[]) && (all a,b,c: (one Node) {
(((a != b) && (a != c) && (b != c)) => ((((adj.b) in a) && (c in (b.adj))) => (c != (a.adj))))
}))
}
pred inv5[] {
((no (iden & adj)) && (all n: (one Node) {
(n !in (n.adj))
}))
}