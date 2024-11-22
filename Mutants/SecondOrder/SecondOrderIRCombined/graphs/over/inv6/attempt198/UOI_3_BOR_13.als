module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(once ((all n1,n2: (one Node) {
(((n1->n2) != adj) => ((n2->n1) in adj))
}) && (all n: (one Node) {
(Node in (n.(*adj)))
})))
}