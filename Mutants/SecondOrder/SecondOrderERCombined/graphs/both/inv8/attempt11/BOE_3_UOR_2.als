module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv8[] {
(all disj n1,n2,n3: (one Node) {
((((n1->n2) in adj) && (adj in (n3->n2))) => ((n1->n3) in adj))
})
}