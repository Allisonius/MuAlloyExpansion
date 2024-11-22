module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(historically ((inv1[]) && (inv4[])))
}
pred inv1[] {
((~adj) != adj)
}
pred inv4[] {
(adj = (Node->Node))
}