module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all n1,n2,n3: (one Node) {
(((lone (n1->n2)) && (some (n2->n3))) => (no (n1->n3)))
})
}