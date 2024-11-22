module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(!(some disj n1,n2: (one Node) {
(eventually (((n1->n2) in adj) && ((n2->n1) in (~adj))))
}))
}