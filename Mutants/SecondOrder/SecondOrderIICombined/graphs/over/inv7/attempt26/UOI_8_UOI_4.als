module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all n: (one Node) {
(always ((Node in (one (n.(^adj)))) && ((n->n) in adj)))
})
}