module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(no n1,n2,n3: (one Node) {
((n1->n2) in (adj + (^adj)))
})
}