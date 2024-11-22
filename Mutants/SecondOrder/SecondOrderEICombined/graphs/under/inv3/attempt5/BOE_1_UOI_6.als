module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(after (((^adj) !in iden) || (iden in adj)))
}