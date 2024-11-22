module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv8[] {
(one n1,n2,n3: (one Node) {
(((some (n1->n2)) && (some (n2->n3))) => (some (n1->n3)))
})
}