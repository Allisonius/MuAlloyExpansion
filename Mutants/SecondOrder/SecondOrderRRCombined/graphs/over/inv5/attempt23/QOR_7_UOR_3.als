module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv5[] {
(some n1: (one Node) {
(n1 in (n1.(*adj)))
})
}