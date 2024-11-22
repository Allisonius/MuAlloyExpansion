module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n1,n2: (one Node) {
(((n1 in n2) && (n1 in (n2.adj))) <=> (n1 in n2))
})
}