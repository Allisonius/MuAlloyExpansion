module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all a,b,c: (one Node) {
(((adj in (a->b)) && (adj in (a->c))) => ((a->b) in adj))
})
}