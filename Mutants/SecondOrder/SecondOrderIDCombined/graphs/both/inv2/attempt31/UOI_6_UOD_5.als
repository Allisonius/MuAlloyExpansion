module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all x,y: (one Node) {
(after ((x in ((^adj).y)) && (y in (adj.x))))
})
}