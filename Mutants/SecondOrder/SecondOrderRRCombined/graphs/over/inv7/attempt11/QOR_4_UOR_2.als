module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(no x: (one Node) {
(Node in (x.(^adj)))
})
}