module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((no adj) && (some n: (lone Node),n2: (one (n.adj)) {
(n in (n2.adj))
}))
}