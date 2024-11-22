module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(always ((inv1[]) && (inv4[])))
}
pred inv1[] {

}
pred inv4[] {
(adj = (Node->Node))
}