module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(some x,y: (one Node) {
((x in (some ((^adj).y))) && (y in ((^adj).x)))
})
}