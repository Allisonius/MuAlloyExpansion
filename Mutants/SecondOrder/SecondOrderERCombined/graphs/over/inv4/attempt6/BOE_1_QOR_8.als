module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
((some n: (one Node) {
((n.adj) = Node)
}) && (all n1,n2: (one Node) {
((n1.adj) in n2)
}) && (all n: (one Node) {
((n.adj) = (Node - n))
}))
}