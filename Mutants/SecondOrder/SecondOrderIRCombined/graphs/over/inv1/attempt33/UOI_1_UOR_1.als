module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(before ((no adj) && (all n: (one Node),n2: (one (n.adj)) {
(n in (n2.adj))
})))
}