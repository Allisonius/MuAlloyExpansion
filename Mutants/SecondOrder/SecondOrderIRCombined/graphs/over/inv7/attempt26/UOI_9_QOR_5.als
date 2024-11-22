module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(lone n: (one Node) {
((Node in (some (n.(^adj)))) && ((n->n) in adj))
})
}