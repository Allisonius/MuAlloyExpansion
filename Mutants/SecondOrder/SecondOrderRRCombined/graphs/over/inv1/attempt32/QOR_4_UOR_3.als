module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(no disj n,n1: (one Node) {
((n1 in (n.adj)) && (n in (n1.adj)))
})
}