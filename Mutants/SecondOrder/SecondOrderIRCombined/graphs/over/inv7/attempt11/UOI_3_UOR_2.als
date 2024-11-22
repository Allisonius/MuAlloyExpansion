module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(all x: (one Node) {
(Node in (some (x.(^adj))))
})
}