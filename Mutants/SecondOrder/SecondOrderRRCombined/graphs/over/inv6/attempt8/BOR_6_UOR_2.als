module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
((^(adj + (~adj))) !in (Node->Node))
}