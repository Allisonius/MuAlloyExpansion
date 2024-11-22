module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(inv4[])
}
pred inv2[] {
(no (~adj))
}
pred inv4[] {
(adj = (Node->Node))
}