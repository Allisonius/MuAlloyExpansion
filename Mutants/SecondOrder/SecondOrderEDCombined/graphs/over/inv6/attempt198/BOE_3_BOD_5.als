module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((all n1,n2: (one Node) {
(adj in (n2->n1))
}) && (all n: (one Node) {
(Node in (n.(*adj)))
}))
}