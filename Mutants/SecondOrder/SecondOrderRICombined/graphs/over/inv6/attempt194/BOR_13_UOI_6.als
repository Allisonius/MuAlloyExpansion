module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(after ((inv1[]) && (all n: (one Node) {
(Node != (n.(^adj)))
})))
}
pred inv1[] {
(all n1,n2: (one Node) {
((n2 in (n1.adj)) => (n1 in (n2.adj)))
})
}