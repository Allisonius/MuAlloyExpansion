module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(all n1,n2: (one Node) {
(n2 in (lone ((n1.(^adj)) - n1)))
})
}