module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv2[] {
(lone (adj.(~adj)))
}