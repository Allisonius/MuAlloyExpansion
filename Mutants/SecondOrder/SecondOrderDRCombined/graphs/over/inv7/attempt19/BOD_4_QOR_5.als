module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(lone n1: (one Node) {
((n1 :> Node) = Node)
})
}