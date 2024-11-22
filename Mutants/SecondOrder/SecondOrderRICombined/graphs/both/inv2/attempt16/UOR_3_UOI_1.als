module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv2[] {
(!(inv1[]))
}
pred inv1[] {
((~adj) = (~adj))
}