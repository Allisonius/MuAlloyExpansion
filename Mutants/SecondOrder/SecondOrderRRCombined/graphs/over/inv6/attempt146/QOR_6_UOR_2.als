module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(one a: (one Node),b: (one Node) {
(b in (a.(^(adj + (~adj)))))
})
}