module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
((all n1,n2: (one Node) {
(((n1->n2) in adj) => ((n2->n1) in adj))
}) && (all n: (one Node) {
((n.(*adj)) in Node)
}))
}