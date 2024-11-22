module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((inv1[]) && ((Node in (((Node)).(^adj))) || (one Node)))
}
pred inv1[] {
(adj in (~adj))
}





