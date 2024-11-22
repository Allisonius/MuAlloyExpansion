module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv8[] {
(all n1,n2,n3: (one Node) {
(((adj in (n1->n2)) && ((n2->n3) in adj)) => ((n1->n2) in adj))
})
}