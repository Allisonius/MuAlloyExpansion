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
(some c: (one Component),p: (one (c.parts)) {
(ordering/gte[(c.position),(p.position)])
})
}





