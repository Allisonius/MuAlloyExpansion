module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some n: (one Node) {
((Node - n) in (lone (n.(adj + (~adj)))))
})
}