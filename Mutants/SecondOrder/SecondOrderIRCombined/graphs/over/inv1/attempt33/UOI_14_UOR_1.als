module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
((no adj) && (all n: (one Node),n2: (one (n.adj)) {
(n in (one (n2.adj)))
}))
}