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
(all p: (one Position) {
(no (((position.p).parts) & ((parts.(p.(^(ordering/next[])))).parts)))
})
}





