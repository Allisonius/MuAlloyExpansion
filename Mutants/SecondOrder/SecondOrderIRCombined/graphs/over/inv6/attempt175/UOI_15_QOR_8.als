module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((inv1[]) && (some n: (one Node) {
((Node in (some (n.(^adj)))) || (one Node))
}))
}
pred inv1[] {
(adj in (~adj))
}