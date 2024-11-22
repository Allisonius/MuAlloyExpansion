module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((some adj) && (one n: (one Node) {
(Node in (some (n.(^(adj + (~adj))))))
}))
}