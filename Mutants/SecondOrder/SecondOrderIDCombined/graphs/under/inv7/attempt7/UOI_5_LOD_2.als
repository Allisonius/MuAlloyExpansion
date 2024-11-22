module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(eventually (some n: (one Node) {
((n.(*adj)) = Node)
}))
}