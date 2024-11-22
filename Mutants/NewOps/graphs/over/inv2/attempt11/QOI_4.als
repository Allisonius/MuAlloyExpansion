module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all var123456 : Node { (no ((var123456.adj) & (var123456.(~adj))))})
}





