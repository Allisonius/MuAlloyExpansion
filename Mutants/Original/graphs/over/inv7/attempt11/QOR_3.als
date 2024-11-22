module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(lone x: (one Node) {
(Node in (x.(^adj)))
})
}





