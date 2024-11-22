module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all a,b,c: (one Node) {
((always (((a->b) in adj) && ((a->c) in adj))) => ((~(a->b)) in adj))
})
}