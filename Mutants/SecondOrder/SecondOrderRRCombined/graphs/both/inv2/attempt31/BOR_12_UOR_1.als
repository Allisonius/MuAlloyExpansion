module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv2[] {
(all x,y: (one Node) {
((x = ((^adj).y)) && (y in ((^adj).x)))
})
}