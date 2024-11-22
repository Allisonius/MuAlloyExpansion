module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((no (*adj)) && (all n: (one Node),n2: (some (n.adj)) {
(n in (n2.adj))
}))
}