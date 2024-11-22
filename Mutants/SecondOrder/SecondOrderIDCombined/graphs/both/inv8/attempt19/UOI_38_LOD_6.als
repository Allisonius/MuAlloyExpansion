module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
((inv5[]) && (all a,b,c: (one Node) {
(((a != b) && (b != c)) => (((a in (adj.b)) && (c in (b.adj))) => (c in (a.adj))))
}))
}
pred inv5[] {
(historically ((no (iden & adj)) && (all n: (one Node) {
(n !in (n.adj))
})))
}