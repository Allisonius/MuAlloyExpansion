module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(once (inv5[]))
}
pred inv5[] {
((no (iden & adj)) && (all n: (one Node) {
(n !in (n.adj))
}))
}