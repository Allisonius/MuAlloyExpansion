module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv2[] {
(some disj n1,n2: (lone Node) {
((n1 in (n2.adj)) && (n2 !in (n1.adj)))
})
}