module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(always ((all n1,n2: (one Node) {
(((n1->n2) in adj) => ((n2->n1) in adj))
}) && (lone n: (one Node) {
(Node in (n.(*adj)))
})))
}