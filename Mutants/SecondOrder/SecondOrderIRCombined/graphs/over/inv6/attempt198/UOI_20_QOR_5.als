module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((no n1,n2: (one Node) {
(((n1->n2) in adj) => ((n2->n1) in adj))
}) && (all n: (one Node) {
(Node in (one (n.(*adj))))
}))
}