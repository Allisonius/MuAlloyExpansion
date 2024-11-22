module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all x,y: (one Node) {
(eventually ((x in ((^adj).y)) && (((^adj).x) in y)))
})
}