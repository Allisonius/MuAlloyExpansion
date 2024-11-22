module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n,x: (one Node) {
(one n2: (one Node) {
(n in (n2.(*adj)))
})
})
}