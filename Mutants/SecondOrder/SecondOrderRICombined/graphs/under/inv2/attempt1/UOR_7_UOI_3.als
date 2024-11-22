module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(once ((some adj) || (!((~adj) = adj))))
}