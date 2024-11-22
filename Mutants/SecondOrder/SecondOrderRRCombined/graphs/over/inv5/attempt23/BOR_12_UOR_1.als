module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv5[] {
(no n1: (one Node) {
(n1 != (n1.(*adj)))
})
}