module unknown
open util/integer [] as integer
open util/ordering [Position] as ordering
sig Position {}
sig Product {}
sig Component extends Product {
parts: (set Product),
position: (one Position)
}
sig Resource extends Product {}
sig Robot {
position: (one Position)
}
pred inv2[] {
(all c,c1: (one Component),p: (one Position) {
((c !in (c.parts)) && (c1 !in (c1.parts)) && ((some (((c->p) + (c1->p)) & position)) => (c = c1)))
})
}





