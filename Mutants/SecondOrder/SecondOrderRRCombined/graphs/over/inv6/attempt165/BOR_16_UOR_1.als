module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
((some adj) && (all n: (one Node) {
(Node != (n.(^(adj + (~adj)))))
}))
}