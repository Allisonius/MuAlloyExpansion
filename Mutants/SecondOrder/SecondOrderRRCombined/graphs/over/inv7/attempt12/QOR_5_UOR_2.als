module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(lone n: (one Node) {
(Node in (n.(^adj)))
})
}