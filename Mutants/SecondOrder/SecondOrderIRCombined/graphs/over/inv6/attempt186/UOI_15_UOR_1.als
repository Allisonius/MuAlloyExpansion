module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(all a: (one Node),b: (one Node) {
((b in (a.(^adj))) || (b in (lone (a.(~(^adj))))))
})
}