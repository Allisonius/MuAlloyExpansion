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
pred inv3[] {
(some r: (one Robot),pos1,pos2: (one Position) {
((((((Component))->((Product))) in parts) && ((((Product))->pos1) in position) && ((r->pos2) in position)) => (pos1 = pos2))
})
}





