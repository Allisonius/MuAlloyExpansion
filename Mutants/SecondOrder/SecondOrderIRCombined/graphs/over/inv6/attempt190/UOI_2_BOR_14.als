module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
(historically (((Node !in (n.(^adj))) && (Node in ((^adj).n))) || (one Node)))
})
}