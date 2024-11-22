module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some disj n,n1: (some Node) {
((n1 in (n.adj)) && (n in (n1.adj)))
})
}