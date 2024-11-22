module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(no a,b,c: (one Node) {
((((a->b) != adj) && ((a->c) in adj)) => ((a->b) in adj))
})
}