module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv2[] {
(no ((Node.(~adj)) & (Node.(~adj))))
}