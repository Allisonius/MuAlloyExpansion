module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(all n: (one Node) {
(historically ((some adj) && (Node = (n.(^adj)))))
})
}