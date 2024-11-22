module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(after ((inv2[]) && (all n: (one Node) {
(no (n.(*adj)))
})))
}
pred inv2[] {
(all n1,n2: (one Node) {
(((n1->n2) in adj) => (!((n2->n1) in adj)))
})
}