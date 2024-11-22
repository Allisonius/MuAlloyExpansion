module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(lone x,y: (one Node) {
((((^adj).y) in x) && (y in ((^adj).x)))
})
}