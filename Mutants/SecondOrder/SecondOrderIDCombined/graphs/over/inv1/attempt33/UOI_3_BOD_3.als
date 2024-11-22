module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(once ((no adj) && (all n: (one Node),n2: (one n) {
(n in (n2.adj))
})))
}