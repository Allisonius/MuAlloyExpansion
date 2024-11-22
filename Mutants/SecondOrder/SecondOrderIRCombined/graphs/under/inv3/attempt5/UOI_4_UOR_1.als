module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
(always ((iden !in (^adj)) || (iden in adj)))
}