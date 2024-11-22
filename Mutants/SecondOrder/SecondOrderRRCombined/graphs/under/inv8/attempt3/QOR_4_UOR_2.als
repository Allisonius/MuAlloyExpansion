module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv8[] {
(no a,b,c: (one Node) {
((((a->b) in adj) && ((a->c) in adj)) => ((a->b) in adj))
})
}