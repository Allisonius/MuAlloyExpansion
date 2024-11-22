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
(((c->p) + (c1->p)) in position)
})
}





