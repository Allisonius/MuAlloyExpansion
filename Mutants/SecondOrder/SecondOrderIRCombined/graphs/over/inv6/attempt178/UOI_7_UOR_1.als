module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(all disj n,x: (one Node) {
((n in (lone (x.(^adj)))) || (n in (x.(~(^adj)))))
})
}