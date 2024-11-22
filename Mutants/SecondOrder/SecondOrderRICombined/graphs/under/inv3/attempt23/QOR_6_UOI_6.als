module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(inv2[])
}
pred inv2[] {
(one n1,n2: (one Node) {
(((n1->n2) in (^adj)) => (!((n2->n1) in adj)))
})
}