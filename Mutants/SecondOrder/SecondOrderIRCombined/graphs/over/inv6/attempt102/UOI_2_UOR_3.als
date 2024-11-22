module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(all n: (one Node) {
(historically ((Node in (n.(^adj))) || (one Node)))
})
}