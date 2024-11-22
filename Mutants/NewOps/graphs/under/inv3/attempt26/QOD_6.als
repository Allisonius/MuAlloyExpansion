module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(some n2: (one Node) {
(((((Node))->n2) in adj) => ((n2->((Node))) !in adj))
})
}





