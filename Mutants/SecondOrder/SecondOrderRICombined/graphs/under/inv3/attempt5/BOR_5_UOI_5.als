module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(eventually ((iden = (^adj)) || (iden in adj)))
}