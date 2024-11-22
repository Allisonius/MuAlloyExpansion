module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no var123456 : Node { ((^(adj + (~adj))) = (var123456->var123456))})
}





