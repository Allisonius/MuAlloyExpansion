module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(before ((no Node) || (one n: (one Node) {
((n.(*adj)) = Node)
})))
}