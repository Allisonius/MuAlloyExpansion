module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
((all n: (one Node) {
((n.adj) = Node)
}) && (all n1,n2: (one Node) {
(n2 in (n1.(*adj)))
}) && (all n: (one Node) {
((n.adj) = n)
}))
}