module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all x,y: (one Node) {
(((x->y) in adj) => ((adj !in (y->x)) && (Node in (((x.(^adj)) + x) + ((~(^adj)).x)))))
})
}