module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv7[] {
(all n: (one Node) {
((some adj) && (Node = (n.(^(^adj)))))
})
}