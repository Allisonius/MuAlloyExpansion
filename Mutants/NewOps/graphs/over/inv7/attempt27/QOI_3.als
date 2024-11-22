module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
((inv4[]) && (inv2[]))
}
pred inv2[] {
(no ((~adj) & adj))
}
pred inv4[] {
(no var123456 : Node { (adj = (var123456->var123456))})
}





