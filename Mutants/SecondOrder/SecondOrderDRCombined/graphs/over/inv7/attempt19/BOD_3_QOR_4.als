module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(no n1: (one Node) {
(Node = Node)
})
}