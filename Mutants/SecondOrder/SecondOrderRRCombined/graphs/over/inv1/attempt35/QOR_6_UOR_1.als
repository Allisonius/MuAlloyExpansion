module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(one n: (one Node),n2: (one Node) {
((n2 in (n.adj)) => (!(n2 in (n.adj))))
})
}