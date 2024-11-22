module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv5[] {
(some n: (one Node) {
(no (n.(*adj)))
})
}