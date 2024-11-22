module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(no x,y: (one Node) {
(y in ((^adj).x))
})
}