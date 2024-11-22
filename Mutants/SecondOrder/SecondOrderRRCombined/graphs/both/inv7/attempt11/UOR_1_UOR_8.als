module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(some n: (set Node) {
((n.(*adj)) = Node)
})
}