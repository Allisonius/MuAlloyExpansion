module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(before ((iden !in (^adj)) || (iden in adj)))
}