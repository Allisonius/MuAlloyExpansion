module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all n1,n2,n3: (one Node) {
((some (n1->n3)) => ((some (n1->n2)) && (no (n2->n3))))
})
}