module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(after ((no Node) || (all n: (one Node) {
((n.(*adj)) = Node)
})))
}