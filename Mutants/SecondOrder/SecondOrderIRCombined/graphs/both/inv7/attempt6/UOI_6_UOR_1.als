module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(all n1: (one Node) {
(n1 in (n1.(^adj)))
})
}