module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
((inv1[]) && (all n: (one Node) {
(after ((Node in (n.(^adj))) || (one Node)))
}))
}
pred inv1[] {
(adj in (~adj))
}