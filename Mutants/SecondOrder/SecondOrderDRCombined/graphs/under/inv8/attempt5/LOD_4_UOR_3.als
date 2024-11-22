module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv8[] {
(all n1,n2,n3: (one Node) {
((some (n2->n3)) => (some (n1->n3)))
})
}