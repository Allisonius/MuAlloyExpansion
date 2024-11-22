module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(one n1,n2,n3: (one Node) {
((((n1->n2) in adj) && (adj in (n3->n2))) => ((n1->n3) in adj))
})
}