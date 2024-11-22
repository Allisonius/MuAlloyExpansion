module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no n: (one Node) {
(Node in (lone (n.(adj + (~adj)))))
})
}