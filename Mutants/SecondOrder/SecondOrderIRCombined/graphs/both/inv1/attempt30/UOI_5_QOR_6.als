module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(one n1,n2: (one Node) {
((n1.adj) = (n2.(*adj)))
})
}