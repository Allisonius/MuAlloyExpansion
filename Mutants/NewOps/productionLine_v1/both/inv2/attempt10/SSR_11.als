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
((all c: (one Component) {
(some ((c.parts) & (univ - c)))
}) && (all c1,c2: (one Component) {
((c2 in (c1.parts)) => ((c2.parts) in (univ - (c1.parts))))
}))
}





