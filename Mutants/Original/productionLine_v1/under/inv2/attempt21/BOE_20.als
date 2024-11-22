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
((all c1,c2: (one Component) {
((c1 in (c2.parts)) => ((univ - (c1.parts)) in c2))
}) && (all c1: (one Component) {
(c1 !in (c1.parts))
}))
}





