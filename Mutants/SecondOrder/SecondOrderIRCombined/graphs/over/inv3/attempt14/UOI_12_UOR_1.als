module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
((all n: (one Node) {
(n !in (n.(^adj)))
}) && (no (~((^adj) & iden))) && ((iden - (^adj)) != iden))
}