module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((inv1[]) && (inv4[]))
}
pred inv1[] {
((~adj) = adj)
}
pred inv4[] {
(no var123456 : Node { (adj = (var123456->var123456))})
}





