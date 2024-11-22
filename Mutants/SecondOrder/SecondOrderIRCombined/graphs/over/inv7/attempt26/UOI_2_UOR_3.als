module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv7[] {
(all n: (one Node) {
(historically ((Node in (n.(^adj))) && ((n->n) in adj)))
})
}