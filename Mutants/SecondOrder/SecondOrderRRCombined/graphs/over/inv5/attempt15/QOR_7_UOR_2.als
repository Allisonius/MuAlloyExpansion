module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv5[] {
(some n: (one Node) {
(no (n.(*adj)))
})
}