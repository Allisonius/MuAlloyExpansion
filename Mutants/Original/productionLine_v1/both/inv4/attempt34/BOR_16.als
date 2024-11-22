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
pred inv4[] {
(all disj c1,c2: (one Component) {
(all p: (one (c1.parts)),pos: (one (c1.position)) {
((p = (c2.parts)) => ((c2.position) = pos))
})
})
}





