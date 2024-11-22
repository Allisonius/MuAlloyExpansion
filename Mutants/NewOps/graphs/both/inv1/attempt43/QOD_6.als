module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(lone m: (one Node) {
((m.adj) = ((Node)))
})
}





