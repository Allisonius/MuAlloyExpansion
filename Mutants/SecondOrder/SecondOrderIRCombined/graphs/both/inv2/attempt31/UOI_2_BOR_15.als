module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all x,y: (one Node) {
(historically ((x in ((^adj).y)) && (y = ((^adj).x))))
})
}