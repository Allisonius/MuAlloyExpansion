module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((some adj) && (all n: (one Node) {
(one (n.(^(adj + (~adj)))))
}))
}