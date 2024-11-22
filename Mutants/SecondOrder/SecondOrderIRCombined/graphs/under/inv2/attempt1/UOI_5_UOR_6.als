module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(eventually ((one adj) || (!((~adj) = adj))))
}