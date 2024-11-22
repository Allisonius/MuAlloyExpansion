module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(all disj n,m: (one Node) {
(((n.(^adj)) in m) <=> ((m.adj) in n))
})
}