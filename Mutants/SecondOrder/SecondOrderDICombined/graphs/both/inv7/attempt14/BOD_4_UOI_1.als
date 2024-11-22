module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(before ((no Node) || (one n: (one Node) {
(n = Node)
})))
}