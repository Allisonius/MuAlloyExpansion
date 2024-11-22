module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(before ((one adj) || (!((~adj) = adj))))
}