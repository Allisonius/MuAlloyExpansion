module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(lone x,y: (one Node) {
(before ((x in ((^adj).y)) && (y in ((^adj).x))))
})
}