module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(after ((inv4[]) && (inv2[])))
}
pred inv2[] {
(lone ((~adj) & adj))
}
pred inv4[] {
(adj = (Node->Node))
}