module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all n: (one Node) {
(once (((n.(^adj)) in Node) && ((n->n) in adj)))
})
}