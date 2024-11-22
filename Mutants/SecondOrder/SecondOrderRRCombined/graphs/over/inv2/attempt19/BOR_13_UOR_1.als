module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv2[] {
(all n1,n2: (one Node) {
((n1 != (n2.adj)) <=> (n2 !in (n1.adj)))
})
}