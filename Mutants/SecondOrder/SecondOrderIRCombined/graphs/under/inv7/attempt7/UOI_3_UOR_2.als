module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(once ((no Node) || (some n: (one Node) {
((n.(*adj)) = Node)
})))
}