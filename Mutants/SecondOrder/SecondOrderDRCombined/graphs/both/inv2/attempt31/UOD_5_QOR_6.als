module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(one x,y: (one Node) {
((x in (adj.y)) && (y in ((^adj).x)))
})
}