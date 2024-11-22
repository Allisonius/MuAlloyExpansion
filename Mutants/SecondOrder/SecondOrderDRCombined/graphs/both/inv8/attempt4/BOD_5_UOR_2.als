module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv8[] {
(inv5[])
}
pred inv5[] {
((no iden) && (all n: (one Node) {
(n !in (n.adj))
}))
}