module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all n,n2: (one Node) {
(some n1: (one Node) {
((adj in (n->n1)) => ((n->n2) in adj))
})
})
}