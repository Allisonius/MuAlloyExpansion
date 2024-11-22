module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
((inv4[]) && (inv2[]))
}
pred inv2[] {
(some ((~adj) & adj))
}
pred inv4[] {
(adj = (Node->Node))
}