module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some a: (lone Node),b: (one Node) {
(b in (a.(^(adj + (~adj)))))
})
}