module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(all v1,v2: (one Node) {
(v1 = v2)
})
}