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
(all c: (Component + Product),r: (one Robot) {
(one ((c.position) & (r.position)))
})
}





