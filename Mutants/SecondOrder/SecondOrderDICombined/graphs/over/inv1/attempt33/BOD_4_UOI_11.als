module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((no adj) && (all n: (one Node),n2: (one n) {
(n in (one (n2.adj)))
}))
}