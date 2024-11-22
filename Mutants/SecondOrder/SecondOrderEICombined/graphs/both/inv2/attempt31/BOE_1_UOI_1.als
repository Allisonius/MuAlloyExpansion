module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all x,y: (one Node) {
(before ((((^adj).y) in x) && (y in ((^adj).x))))
})
}