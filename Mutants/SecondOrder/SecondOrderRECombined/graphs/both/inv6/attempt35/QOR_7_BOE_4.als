module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some n1,n2,n3: (one Node) {
((((n1->n2) in adj) && ((n3->n2) in adj)) => (adj in (n1->n3)))
})
}