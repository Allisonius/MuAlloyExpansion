module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(after ((all n1,n2: (one Node) {
(((n1->n2) in adj) => ((n2->n1) in adj))
}) && (all n: (one Node) {
(Node in (n.(*adj)))
})))
}