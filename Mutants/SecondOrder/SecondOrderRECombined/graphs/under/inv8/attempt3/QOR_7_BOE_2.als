module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some a,b,c: (one Node) {
(((adj in (a->b)) && ((a->c) in adj)) => ((a->b) in adj))
})
}