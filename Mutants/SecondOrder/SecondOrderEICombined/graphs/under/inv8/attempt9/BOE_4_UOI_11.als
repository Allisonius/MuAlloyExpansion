module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all disj n1,n2,n3: (one Node) {
((((n1->n2) in (*adj)) && ((n2->n3) in adj)) => (adj in (n1->n3)))
})
}