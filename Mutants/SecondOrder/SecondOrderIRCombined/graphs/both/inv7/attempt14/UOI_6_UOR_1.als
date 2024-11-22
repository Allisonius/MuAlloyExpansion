module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(after ((no Node) || (one n: (one Node) {
((n.(*adj)) = Node)
})))
}