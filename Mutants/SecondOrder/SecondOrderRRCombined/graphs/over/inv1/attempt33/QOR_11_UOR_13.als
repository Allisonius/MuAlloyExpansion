module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((no adj) && (some n: (one Node),n2: (lone (n.adj)) {
(n in (n2.adj))
}))
}