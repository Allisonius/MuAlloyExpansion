module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
(one v1,v2,v3: (one Node) {
((((v1->v2) in adj) && ((v2->v3) in adj)) => (v1 = v3))
})
}