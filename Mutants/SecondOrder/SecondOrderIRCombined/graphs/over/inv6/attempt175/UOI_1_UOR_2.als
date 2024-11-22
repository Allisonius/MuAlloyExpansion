module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(before ((inv1[]) && (all n: (one Node) {
((Node in (n.(^adj))) || (one Node))
})))
}
pred inv1[] {
(adj in (~adj))
}