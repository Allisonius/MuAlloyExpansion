module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all disj n1,n2,n3: (one Node) {
(((before (((n1->n2) in adj) || ((n2->n1) in adj))) && (((n3->n2) != adj) || ((n2->n3) in adj))) => ((n1->n3) in adj))
})
}