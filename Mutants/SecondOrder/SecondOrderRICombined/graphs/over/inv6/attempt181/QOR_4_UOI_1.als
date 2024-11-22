module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no n: (one Node) {
(before (((Node in (n.(^adj))) && (inv1[])) || (one Node)))
})
}
pred inv1[] {
(adj in (~adj))
}