module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(some n1,n2: (one Node) {
(n2 in ((n1.(^adj)) - n1))
})
}