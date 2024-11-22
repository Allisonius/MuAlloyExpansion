module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(eventually ((iden !in (^adj)) || (iden in adj)))
}