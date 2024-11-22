module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some n1: (one Node) {
((((((Node))->n1) in adj) && ((n1->((Node))) in adj)) => ((((Node))->((Node))) in adj))
})
}





