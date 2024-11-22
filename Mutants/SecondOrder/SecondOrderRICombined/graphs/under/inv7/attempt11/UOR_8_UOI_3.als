module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(once ((no Node) || (lone ({ n: (one Node) {
((n.(*adj)) = Node)
} }))))
}