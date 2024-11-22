module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(((((Node)) in (((Node)).adj)) => (((Node)) in (((Node)).adj))) && (all n: (one Node) {
(n in ((n.adj).adj))
}))
}





