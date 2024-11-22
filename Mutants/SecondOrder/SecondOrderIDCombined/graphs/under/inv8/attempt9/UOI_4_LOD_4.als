module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all disj n1,n2,n3: (one Node) {
((always ((n2->n3) in adj)) => ((n1->n3) in adj))
})
}