module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(inv5[])
}
pred inv5[] {
(eventually ((one (iden & adj)) && (all n: (one Node) {
(n !in (n.adj))
})))
}