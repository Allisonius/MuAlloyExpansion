module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(once ((all n: (one Node) {
(n !in (n.(^adj)))
}) && (no ((^adj) & iden)) && ((iden - (^adj)) = iden)))
}