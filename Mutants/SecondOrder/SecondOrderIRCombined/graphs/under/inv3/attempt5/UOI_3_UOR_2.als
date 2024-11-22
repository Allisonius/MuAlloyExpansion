module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(once ((iden !in (^adj)) || (iden in adj)))
}