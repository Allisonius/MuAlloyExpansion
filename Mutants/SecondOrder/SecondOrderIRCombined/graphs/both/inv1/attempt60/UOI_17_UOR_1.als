module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(all v1,v2: (one Node) {
((((v1->v2) in adj) && ((v2->v1) in (*adj))) => (v1 = v2))
})
}