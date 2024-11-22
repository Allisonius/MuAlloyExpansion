module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all n1: (one Node) {
(((n1.(^adj)) ++ Node) = Node)
})
}