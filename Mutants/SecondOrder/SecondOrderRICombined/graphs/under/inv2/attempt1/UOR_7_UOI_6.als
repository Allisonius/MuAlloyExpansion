module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(after ((some adj) || (!((~adj) = adj))))
}