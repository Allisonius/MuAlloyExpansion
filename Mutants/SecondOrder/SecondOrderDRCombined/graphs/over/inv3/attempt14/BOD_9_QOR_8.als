module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
((some n: (one Node) {
(n !in (n.(^adj)))
}) && (no ((^adj) & iden)) && ((^adj) != iden))
}