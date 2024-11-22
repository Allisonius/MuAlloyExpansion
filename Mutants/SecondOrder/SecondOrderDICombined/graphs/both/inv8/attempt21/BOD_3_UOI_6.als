module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all n1,n2,n3: (one Node) {
(after (((n1->n3) in adj) || ((n3->n1) in adj)))
})
}