module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(historically ((no Node) || (some n: (one Node) {
(n = Node)
})))
}