module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(always ((no Node) || (some ({ n: (one Node) {
((n.(*(~adj))) = Node)
} }))))
}