module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all n: (one Node) {
(after ((Node != (n.(^adj))) && ((n->n) in adj)))
})
}