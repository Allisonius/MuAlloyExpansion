module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv2[] {
(!(some disj n1,n2: (one Node) {
(once (((n1->n2) in adj) && ((n2->n1) in adj)))
}))
}