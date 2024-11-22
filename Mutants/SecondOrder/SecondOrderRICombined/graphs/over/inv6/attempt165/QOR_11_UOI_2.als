module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((some adj) && (some n: (one Node) {
(Node in (one (n.(^(adj + (~adj))))))
}))
}