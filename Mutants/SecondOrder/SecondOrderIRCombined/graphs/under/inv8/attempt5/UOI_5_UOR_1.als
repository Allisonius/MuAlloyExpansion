module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv8[] {
(all n1,n2,n3: (one Node) {
((eventually ((some (n1->n2)) && (some (n2->n3)))) => (some (n1->n3)))
})
}