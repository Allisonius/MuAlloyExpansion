module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(always ((no Node) || (one n: (one Node) {
((n.(*adj)) = Node)
})))
}