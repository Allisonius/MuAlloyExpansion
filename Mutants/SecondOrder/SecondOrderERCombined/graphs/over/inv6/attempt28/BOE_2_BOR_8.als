module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((iden + (Node->Node)) in (^(adj & (~adj))))
}