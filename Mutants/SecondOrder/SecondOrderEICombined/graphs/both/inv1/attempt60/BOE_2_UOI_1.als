module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all v1,v2: (one Node) {
((before ((adj in (v1->v2)) && ((v2->v1) in adj))) => (v1 = v2))
})
}