module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all disj n,n1: (one Node) {
((n1 in (some (n.adj))) && (n != (n1.adj)))
})
}