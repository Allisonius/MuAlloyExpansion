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
((no c1,c2: (one Component) {
((c1 in (c2.parts)) => (c2 in (univ - (c1.parts))))
}) && (all c1: (one Component) {
(c1 !in (c1.parts))
}))
}





