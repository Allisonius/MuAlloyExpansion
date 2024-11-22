module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((all n1,n2: (one Node) {
((adj in (n1->n2)) => ((n2->n1) = adj))
}) && (all n: (one Node) {
(Node in (n.(*adj)))
}))
}