module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(lone n: (one Node) {
((Node !in (n.(^adj))) && ((n->n) in adj))
})
}