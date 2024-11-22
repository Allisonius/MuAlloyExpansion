module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(no v1,v2: (one Node) {
((after (((v1->v2) in adj) && ((v2->v1) in adj))) => (v1 = (v2 & v1)))
})
}