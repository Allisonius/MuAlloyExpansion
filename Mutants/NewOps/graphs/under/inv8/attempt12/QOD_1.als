module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some e2: (one Node) {
((((((Node))->e2) in adj) && ((e2->((Node))) in adj)) => ((((Node))->e2) in adj))
})
}





