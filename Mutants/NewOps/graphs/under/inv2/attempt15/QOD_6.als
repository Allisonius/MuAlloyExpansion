module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(some n2: (one Node) {
((n2 in (((Node)).adj)) => (((Node)) !in (n2.adj)))
})
}





