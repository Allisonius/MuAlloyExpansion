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
(all c: (one Component) {
(some (((c.(^parts)).position) & ((ordering/prevs[((c.parts).position)]) + (c.position))))
})
}





