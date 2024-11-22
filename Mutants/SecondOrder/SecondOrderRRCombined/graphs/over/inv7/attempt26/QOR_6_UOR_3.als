module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv7[] {
(one n: (one Node) {
((Node in (n.(^adj))) && ((n->n) in adj))
})
}