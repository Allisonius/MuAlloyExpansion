module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((all n1,n2: (one Node) {
(((n1->n2) in adj) => (adj in (n2->n1)))
}) && (no n: (one Node) {
(Node in (n.(*adj)))
}))
}