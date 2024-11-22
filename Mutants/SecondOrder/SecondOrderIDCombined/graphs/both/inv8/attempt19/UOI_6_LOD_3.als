module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(after (inv5[]))
}
pred inv5[] {
((no (iden & adj)) && (all n: (one Node) {
(n !in (n.adj))
}))
}