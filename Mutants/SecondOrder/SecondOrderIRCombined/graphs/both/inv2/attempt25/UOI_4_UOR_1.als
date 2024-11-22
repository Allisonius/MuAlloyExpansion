module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv2[] {
(all n: (one Node) {
(n in ((n.(~adj)).(~adj)))
})
}