module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(!(some disj n1,n2: (one Node) {
(after ((n2->n1) in adj))
}))
}